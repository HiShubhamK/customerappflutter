abstract class BaseApiService {
  Future<dynamic> getGetApiResponse(String url,Map<String, dynamic> data);

  Future<dynamic> getPostApiResponse(String url,dynamic data);
}
