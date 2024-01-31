import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class Store {
  const Store._();

  static const String _tokenKey = "TOKEN";
  static const String _isLoginKey = "IS_LOGIN";

  static Future<void> setToken(String token) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_tokenKey, token);
  }

  static Future<String?> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_tokenKey);
  }
  static Future<void> setIsLogin(bool isLogin) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool(_isLoginKey, isLogin);
  }

  static Future<bool?> getIsLogin() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool(_isLoginKey);
  }


  static Future<void> clear() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
