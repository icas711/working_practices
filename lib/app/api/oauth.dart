import 'dart:convert';

import 'package:clock/clock.dart';
import 'package:dio/dio.dart';
import 'package:working_practices/app/api/oauth_grant_type.dart';
import 'package:working_practices/app/services/jwt_decoder.dart';
import 'package:working_practices/app/storage/token_storage/auth_token_pair.dart';
import 'package:working_practices/app/storage/token_storage/token_storage_impl.dart';

class OAuth extends Interceptor {
  OAuth({
    required this.tokenUrl,
    required this.clientId,
    required this.clientSecret,
    this.dio,
    this.name = 'oauth',
    this.clock = const Clock(),
    required this.storage,
  });

  final String tokenUrl;
  final String clientId;
  final String clientSecret;
  final String name;
  final Dio? dio;
  final Clock clock;
  final TokenStorage<AuthTokenPair> storage;

  Future<bool> get isSignedIn async {
    final AuthTokenPair? token = await storage.read();
    return token != null;
  }

  Future<AuthTokenPair?> get token async => storage.read();

  ///Десериализация Token
  Future getData() async {
    final AuthTokenPair? authTokenPair = await storage.read();
    Map<String, dynamic> decodedToken =
        JwtDecoder.decode(authTokenPair?.accessToken ?? '');
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final expiresAtMillis = (await storage.read())?.expiresAt;
    if (expiresAtMillis != null) {
      final expiresAt = DateTime.fromMillisecondsSinceEpoch(
        expiresAtMillis,
      );

      if (expiresAt.isBefore(clock.now())) {
        await refresh();
      }
    }

    final token = await storage.read();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer ${token.accessToken}';
    }
    return super.onRequest(options, handler);
  }

  Future<void> login(OAuthGrantType grant) async {
    await logout();

    final dio = this.dio ?? Dio();
    final options = await grant.handle(
      RequestOptions(
        path: tokenUrl,
        method: 'POST',
        contentType: 'application/x-www-form-urlencoded',
        responseType: ResponseType.json,
      ),
    );

    /*(options.data as Map<String, String>).addAll({
      'client_id': clientId,
      'client_secret': clientSecret,
    });*/

    options.headers['Authorization'] = basicAuthHeader(clientId, clientSecret);
    final response = await dio.post(
      tokenUrl,
      data: options.data,
      options: Options(
        // contentType: options.contentType,
        headers: options.headers,
        // method: options.method,
      ),
    );
    /*final response = await dio.request<Map<String, dynamic>>(
      tokenUrl,
      data: options.data,
      options: Options(
        contentType: options.contentType,
        headers: options.headers,
        method: options.method,
      ),
    );*/
    final body = response.data!;
    final AuthTokenPair authTokenPair = AuthTokenPair(
        accessToken: body['access_token'] ?? '',
        refreshToken: body['refresh_token'] ?? '',
        expiresIn: body['expires_in'] as int,
        expiresAt: clock
            .now()
            .add((body['expires_in'] as int).seconds)
            .millisecondsSinceEpoch);
    await storage.write(authTokenPair);
  }

  Future<void> refresh() async {
    final refreshToken = (await storage.read())?.refreshToken;
    if (refreshToken != null) {
      final grant = RefreshTokenGrant(
        refreshToken: refreshToken,
      );
      await login(grant);
    }
  }

  Future<void> logout() async {
    await storage.delete();
  }
}

extension NumTimeExtension<T extends num> on T {
  /// Returns a Duration represented in seconds
  Duration get seconds => milliseconds * Duration.millisecondsPerSecond;

  /// Returns a Duration represented in milliseconds
  Duration get milliseconds => Duration(
      microseconds: (this * Duration.microsecondsPerMillisecond).toInt());

  /// Returns a Duration represented in microseconds
  Duration get microseconds =>
      milliseconds ~/ Duration.microsecondsPerMillisecond;
}

Uri addQueryParameters(Uri url, Map<String, String> parameters) => url.replace(
    queryParameters: Map.from(url.queryParameters)..addAll(parameters));

String basicAuthHeader(String identifier, String secret) {
  var userPass = '${Uri.encodeFull(identifier)}:${Uri.encodeFull(secret)}';
  return 'Basic ${base64Encode(ascii.encode(userPass))}';
}
