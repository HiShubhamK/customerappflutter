abstract class BaseApiService {
  Future<dynamic> getGetApiResponse(String url,Map<String, String> data);

  Future<dynamic> getPostApiResponse(String url,dynamic data);
}
