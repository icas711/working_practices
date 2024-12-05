import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_practices/app/api/oauth.dart';
import 'package:working_practices/app/config/environment.dart';
import 'package:working_practices/app/di/app_scope_register.dart';

final class AppScope implements IAppScope {
  @override
  final Environment env;
  @override
  final AppConfig appConfig;
  @override
  final SharedPreferences sharedPreferences;
  @override
  final Dio dio;
  @override
  final  OAuth oAuth;

  /// {@macro app_scope.class}
  const AppScope({
    required this.env,
    required this.appConfig,
    required this.sharedPreferences,
    required this.dio,
    required this.oAuth,
  });



}

/// {@macro app_scope.class}
abstract interface class IAppScope {
  /// Environment.
  Environment get env;

  /// App configuration.
  AppConfig get appConfig;

  /// Http client.
  Dio get dio;

  /// Авторизация отдельно
   OAuth get oAuth;

  /// Shared preferences.
  SharedPreferences get sharedPreferences;

}
