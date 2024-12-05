import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';

class AppDioConfigurator {
  /// {@macro app_dio_configurator.class}
  const AppDioConfigurator();

  /// Creating a client [Dio].
  Dio create({
    required Dio dio,
    required Iterable<Interceptor> interceptors,
    required String baseUrl,
  }) {
    const timeout = Duration(seconds: 30);

    //final dio = Dio();

    dio.options
      ..baseUrl = baseUrl
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;

    final CacheStore cacheStore = MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576);
    final CacheOptions cacheOptions = CacheOptions(
      store: cacheStore,
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(minutes: 5),
    );
    dio.interceptors.add(
      DioCacheInterceptor(options: cacheOptions),
    );
    dio.interceptors.addAll(interceptors);
    if (kDebugMode) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }
    /*final caller = Caller(
      cacheStore: cacheStore,
      cacheOptions: cacheOptions,
      dio: dio,
    );*/
    return dio;
  }
}
