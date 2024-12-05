import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_practices/app/storage/token_storage/auth_token_pair.dart';


/// {@template tokens_storage.class}
/// Implementation [TokenStorage]
/// {@endtemplate}
final class TokenStorageImplShared implements TokenStorage<AuthTokenPair> {
  final SharedPreferences _secureStorage;

  /// {@macro tokens_storage.class}
  const TokenStorageImplShared(this._secureStorage);

  @override
  Future<AuthTokenPair?> read() async {
    final tokenJson = _secureStorage.getString(TokensStorageKeys.authToken.keyName);

    if (tokenJson == null) return null;

    return AuthTokenPair.fromJson(jsonDecode(tokenJson) as Map<String, dynamic>);
  }

  @override
  Future<void> write(AuthTokenPair token) async {
     await _secureStorage.setString(
      TokensStorageKeys.authToken.keyName,
      jsonEncode(token.toJson()),
    );
  }

  @override
  Future<void> delete() async {
    for (final key in TokensStorageKeys.values) {
      await _secureStorage.remove(key.keyName);
    }
  }
}

final class TokenStorageImpl implements TokenStorage<AuthTokenPair> {
  final FlutterSecureStorage _secureStorage;

  /// {@macro tokens_storage.class}
  const TokenStorageImpl(this._secureStorage);

  @override
  Future<AuthTokenPair?> read() async {
    final tokenJson = await _secureStorage.read(key: TokensStorageKeys.authToken.keyName);

    if (tokenJson == null) return null;

    return AuthTokenPair.fromJson(jsonDecode(tokenJson) as Map<String, dynamic>);
  }

  @override
  Future<void> write(AuthTokenPair token) async{
    return await _secureStorage.write(
      key: TokensStorageKeys.authToken.keyName,
      value: jsonEncode(token.toJson()),
    );
  }

  @override
  Future<void> delete() async {
    for (final key in TokensStorageKeys.values) {
      await _secureStorage.delete(key: key.keyName);
    }
  }
}

/// Keys for [TokenStorageImpl]
enum TokensStorageKeys {
  /// @nodoc
  authToken('app_auth_token');

  /// Key name
  final String keyName;

  const TokensStorageKeys(this.keyName);
}


abstract class TokenStorage<T> {
  /// Returns the stored token asynchronously.
  Future<T?> read();

  /// Saves the provided [token] asynchronously.
  Future<void> write(T token);

  /// Deletes the stored token asynchronously.
  Future<void> delete();
}