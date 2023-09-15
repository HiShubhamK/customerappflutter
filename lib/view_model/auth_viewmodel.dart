import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/repository/auth_repository.dart';
import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:customerappdart/view/home_screen.dart';
import 'package:customerappdart/view/login_screen.dart';
import 'package:customerappdart/view/otp_screen.dart';
import 'package:customerappdart/view_model/validateaccount_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../view/Screen_OTP.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();

  Future<void> sendOTP(Map<String, dynamic> mobile,BuildContext context, String mobileno) async {
    myRepo.sendOTP(mobile, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.responseMessage.toString(), context);
          var values=value.data.toString();
          Navigator.push(
              context,
              MaterialPageRoute(
                 // builder: (context) => OTPScreen(value.data.toString()),

                 builder: (context) => ScreenOTP(otp: values,mobno:mobileno),
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
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.responseMessage.toString(), context);
          Utils.TOKEN=value.data!.token.toString();
          ValidateAccountViewModel validateAccountViewModel=new ValidateAccountViewModel();
          validateAccountViewModel.saveToken(value);


          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
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
  Future<void> Dashboard(Map<String, dynamic> mobile,BuildContext context) async {
    myRepo.GetDashboard(mobile, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.toastMessage('Dashboard api'+value.responseMessage.toString());

          // Utils.TOKEN=value.data!.token.toString();
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => HomeScreen(value.data.toString()),
          //     ),
          //     );
        }
         // Album.fromJson(jsonDecode(response.body));

        print(value.toString());

      }


    }).onError((error, stackTrace) {
      Utils.flushbarErrorMessage(error.toString(), context);

      print(error.toString());

    });

  }

}