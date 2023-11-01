import 'dart:convert';
import 'dart:io';

import 'package:customerappdart/data/app_execption.dart';
import 'package:customerappdart/data/network/BaseApiService.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:http/http.dart'as http;

class NetworkApiService extends BaseApiService{
  @override
  Future getGetApiResponse(String url,Map<String, dynamic> qParams) async {
    dynamic responseJson;
    try{

      // Map<String, String> qParams = {
      //   'param1': 'one',
      //   'param2': 'two',
      // };
      final response =await http.get(createUri(url, qParams.cast<String, dynamic>()),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer ${Utils.TOKEN}",
          HttpHeaders.contentTypeHeader: "application/json"
        },).timeout(Duration(seconds: 10));
      responseJson=returnResponse(response);
    }on SocketException{
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try{
      http.Response response=await http.post(
        Uri.parse(url),
        body:data
      ).timeout(Duration(seconds: 10));

      responseJson=returnResponse(response);
    }on SocketException{

      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson=jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
        case 500:

      case 404:
        throw UnauthorisedException(response.body.toString());

      default:
        throw FetchDataException('Error accured while communicating with server'+'with status code '+response.statusCode.toString());


    }
  }
  Uri createUri(String url, [Map<String, dynamic>? queryParameters]) {
    var isHttp = false;
    if (url.startsWith('https://') || (isHttp = url.startsWith('http://'))) {
      var authority = url.substring((isHttp ? 'http://' : 'https://').length);
      String path;
      final index = authority.indexOf('/');

      if (-1 == index) {
        path = '';
      } else {
        path = authority.substring(index);
        authority = authority.substring(0, authority.length - path.length);
      }

      if (isHttp) {
        return Uri.http(authority, path, queryParameters);
      } else {
        return Uri.https(authority, path, queryParameters);
      }
    } else if (url.startsWith('localhost')) {
      return createUri('http://' + url, queryParameters);
    }

    throw Exception('Unsupported scheme');
  }
}