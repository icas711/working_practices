import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:working_practices/app/api/url.dart';

class DioApi {
  final Dio dio;

  const DioApi(this.dio);

  Future<Response> read(
      {required EndPointType endPointType, String? id, String? fileId, bool? forceCache}) async {
    final CacheStore cacheStore = MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576);
    final CacheOptions cacheOptions = CacheOptions(
      store: cacheStore,
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
    );
    forceCache??=false;
    Options? options;
    if(forceCache){
     options= cacheOptions.copyWith(policy: CachePolicy.refresh).toOptions();
    }else{
      options= cacheOptions.copyWith(policy: CachePolicy.noCache).toOptions();
    }
    String url = endPointType.value;
    if (id != null) url = url + id + endPointType.secondValue;
    if (fileId != null) url = '$url/$fileId${endPointType.thirdValue}';
    final response = await dio.get(url, options: options);
    return response;
  }
  Future<Response> download(
      {required EndPointType endPointType, String? id, String? fileId, bool? forceCache}) async {
    final CacheStore cacheStore = MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576);
    final CacheOptions cacheOptions = CacheOptions(
      store: cacheStore,
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
    );
    forceCache??=false;
    Options? options;
    if(forceCache){
      options= cacheOptions.copyWith(policy: CachePolicy.refresh).toOptions();
    }else{
      options= cacheOptions.copyWith(policy: CachePolicy.noCache).toOptions();
    }
    String url = endPointType.value;
    if (id != null) url = url + id + endPointType.secondValue;
    if (fileId != null) url = '$url/$fileId${endPointType.thirdValue}';
    final response = await dio.get<List<int>>(url, options: Options(responseType: ResponseType.bytes));
    return response;
  }

  Future<Response> create({
    required EndPointType endPointType,
    String? id,
    String? secondId,
    required data,
  }) async {
    String url = endPointType.value;
    if (id != null) url = url + id + endPointType.secondValue;
    if (secondId != null) url = '$url/$secondId${endPointType.thirdValue}';
    return await dio.post(url, data: data);
  }

  Future update (
      {required EndPointType endPointType, required data, String? id, String? fileId}) async {
    String url = endPointType.value;
    if (id != null) url += id;
    if (fileId != null) url += '${endPointType.secondValue}/$fileId${endPointType.thirdValue}';
    final response= await dio.put(url, data: data);
    return response;
  }

  Future delete({required EndPointType endPointType,required String id,String? fileId}) async {
    String url = endPointType.value+id;
    if (fileId != null) url += '/files/$fileId';
    return await dio.delete(url);
  }
}
