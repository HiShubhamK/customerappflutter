import 'package:customerappdart/model/validateaccount/validateaccountresponse.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ValidateAccountViewModel extends ChangeNotifier {
  Future<bool> saveToken(
      ValidateAccountResponse validateAccountResponse) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', validateAccountResponse.data!.token.toString());
    notifyListeners();
    return true;
  }

  Future<dynamic> isLogin(bool isLogin) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool('isLogin', isLogin);
    notifyListeners();
  }

  Future<bool?> getisLogin() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final bool? isLogin = sp.getBool('isLogin');
    return isLogin;
  }

  Future<String> getToken() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? token = sp.getString('token');
    return token.toString();
  }

  Future<bool> remove() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.clear();
  }
}
