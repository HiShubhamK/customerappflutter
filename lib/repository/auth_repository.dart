import 'dart:convert';

import 'package:customerappdart/data/network/BaseApiService.dart';
import 'package:customerappdart/data/network/NetworkApiService.dart';
import 'package:customerappdart/model/otpresponse.dart';
import 'package:customerappdart/res/app_url.dart';
import 'package:customerappdart/view/otp_screen.dart';
import 'package:flutter/cupertino.dart';

class AuthRepository {
  BaseApiService apiService = NetworkApiService();
  // Future<Album> fetchAlbum() async {
  //   final response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  //
  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     return Album.fromJson(jsonDecode(response.body));
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }


  Future<OtpResponse> sendOTP(Map<String, dynamic> mobile,BuildContext context) async {
    try {
      dynamic response =
          await apiService.getGetApiResponse(AppUrl.getotp,mobile);

      final jsonData = OtpResponse.fromJson(response);
      return jsonData;
    } catch (e) {
      throw e;
    }
  }
  Future<dynamic> validateAccount(Map<String, dynamic> mobile,BuildContext context) async {
    try {
      dynamic response =
          await apiService.getGetApiResponse(AppUrl.validateAccount,mobile);

      return response;
    } catch (e) {
      throw e;
    }
  }
}
