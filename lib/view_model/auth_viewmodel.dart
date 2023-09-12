import 'package:customerappdart/repository/auth_repository.dart';
import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:customerappdart/view/login_screen.dart';
import 'package:customerappdart/view/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();

  Future<void> sendOTP(Map<String, dynamic> mobile,BuildContext context) async {
    myRepo.sendOTP(mobile, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.responseMessage.toString(), context);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OTPScreen(value.data.toString()),
              ),
              );
        }
         // Album.fromJson(jsonDecode(response.body));

        print(value.toString());

      }

      
    }).onError((error, stackTrace) {
      Utils.flushbarErrorMessage(error.toString(), context);

      print(error.toString());

    });

  }
  Future<void> validateAccount(Map<String, dynamic> mobile,BuildContext context) async {
    myRepo.validateAccount(mobile, context).then((value) {
      if(kDebugMode){
        Utils.showsnackbar(value.toString(), context);

        print(value.toString());

      }


    }).onError((error, stackTrace) {
      Utils.flushbarErrorMessage(error.toString(), context);

      print(error.toString());

    });

  }

}