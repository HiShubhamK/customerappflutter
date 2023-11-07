import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static const avaiableCategories = [];
  static var mobile = "";
  static var TOKEN = "";
  static var customerid = 0;
  static List<Data>? modelList = [];

  static List<Data>? getModelList() {
    return modelList;
  }

  static void addModel(Data model) {
    modelList!.add(model);
  }

  static void clearModelList() {
    modelList!.clear();
  }

  static toastMessage(String messsage) {
    Fluttertoast.showToast(
        msg: messsage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static void flushbarErrorMessage(String messsage, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          message: messsage,
          duration: Duration(seconds: 3),
          borderRadius: BorderRadius.circular(8),
          flushbarPosition: FlushbarPosition.BOTTOM,
          backgroundColor: Colors.red,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: Icon(
            Icons.error,
            size: 20,
            color: Colors.white,
          ),
        )..show(context));
  }

  static showsnackbar(String messsage, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.green, content: Text(messsage)));
  }

  static String formateddd_mm_yyydate(DateTime date, BuildContext context) {
    String formattedDate = DateFormat('dd-MM-yyyy').format(date);
    return formattedDate;
  }

  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
