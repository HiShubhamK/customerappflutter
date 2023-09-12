import 'package:customerappdart/data/network/BaseApiService.dart';
import 'package:customerappdart/data/network/NetworkApiService.dart';
import 'package:customerappdart/res/app_url.dart';
import 'package:flutter/cupertino.dart';

class AuthRepository {
  BaseApiService apiService = NetworkApiService();


  Future<dynamic> sendOTP(Map<String, String> mobile,BuildContext context) async {
    try {
      dynamic response =
          await apiService.getGetApiResponse(AppUrl.getotp,mobile);

      return response;
    } catch (e) {
      throw e;
    }
  }
  Future<dynamic> validateAccount(Map<String, String> mobile,BuildContext context) async {
    try {
      dynamic response =
          await apiService.getGetApiResponse(AppUrl.validateAccount,mobile);

      return response;
    } catch (e) {
      throw e;
    }
  }
}
