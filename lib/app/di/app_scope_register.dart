import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:working_practices/app/api/app_dio_configurator.dart';
import 'package:working_practices/app/api/oauth.dart';
import 'package:working_practices/app/api/url.dart';
import 'package:working_practices/app/config/environment.dart';
import 'package:working_practices/app/di/app_scope.dart';
import 'package:working_practices/app/storage/token_storage/token_storage_impl.dart';

final class AppScopeRegister {
  /// {@macro app_scope_register.class}
  const AppScopeRegister();

  /// Create scope.
  Future<IAppScope> createScope(Environment env) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final appConfig = _createAppConfig(env, sharedPreferences);

    const identifier = 'app';
    const secret = '';
    final dio = Dio();
    const dioConfigurator = AppDioConfigurator();
    final OAuth oAuth = OAuth(
      tokenUrl: appConfig.url.authorization,
      clientId: identifier,
      clientSecret: secret,
      dio: dio,
      storage: TokenStorageImplShared(sharedPreferences),
    );
    final interceptors = <Interceptor>[oAuth];
    final dioApp = dioConfigurator.create(
      dio:dio,
      interceptors: interceptors,
      baseUrl: appConfig.url.base,
    );


    /* final analyticsService = AnalyticService.withStrategies({
      // TODO(init): can be removed MockFirebaseAnalytics, added for demo analytics track.
      FirebaseAnalyticStrategy(const MockFirebaseAnalytics()),
    });*/

    return AppScope(
      env: env,
      appConfig: appConfig,
      sharedPreferences: sharedPreferences,
      dio: dioApp,
      oAuth: oAuth,
    );
  }

  AppConfig _createAppConfig(Environment env, SharedPreferences prefs) {
    if (env.isProd && kReleaseMode) {
      return AppConfig(url: env.buildType.defaultUrl);
    }

    return AppConfig(
      url: env.buildType.defaultUrl,
    );
  }
}

class AppConfig {
  /// Server url.
  final Url url;

  /// Proxy url.
  final String? proxyUrl;

  /// {@macro app_config.class}
  const AppConfig({
    required this.url,
    this.proxyUrl,
  });
}
