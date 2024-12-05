import 'dart:async';

import 'package:dio/dio.dart';

/// Used to implement a grant type
abstract class OAuthGrantType {
  /// Update a request according to the requirements of the grant type.
  ///
  /// Usually used to add the required parameters to the request body.
  FutureOr<RequestOptions> handle(RequestOptions request);
}

/// Grant type for Client Credentials
class ClientCredentialsGrant implements OAuthGrantType {
  const ClientCredentialsGrant();

  @override
  RequestOptions handle(RequestOptions request) {
    request.data = <String, String>{
      'grant_type': 'client_credentials',
    };

    return request;
  }
}

/// Obtain an access token using a username and password
class PasswordGrant extends OAuthGrantType {
  PasswordGrant({
    required this.username,
    required this.password,
    this.scope = const [],
  });

  final String username;
  final String password;
  final List<String> scope;

  @override
  RequestOptions handle(RequestOptions request) {
    request.data = {
      'grant_type': 'password',
      'username': username,
      'password': password,
     // 'scope': scope.join(' '),
    };

    return request;
  }
}

/// Obtain an access token using an refresh token
class RefreshTokenGrant extends OAuthGrantType {
  RefreshTokenGrant({
    required this.refreshToken,
  });

  final String refreshToken;

  @override
  RequestOptions handle(RequestOptions request) {
    request.data = {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
    };
    return request;
  }
}