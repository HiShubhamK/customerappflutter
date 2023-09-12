import 'package:customerappdart/repository/auth_repository.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();

  Future<void> sendOTP(Map<String, String> mobile,BuildContext context) async {
    myRepo.sendOTP(mobile, context).then((value) {
      if(kDebugMode){
        Utils.showsnackbar(value.toString(), context);

        print(value.toString());

      }

      
    }).onError((error, stackTrace) {
      Utils.flushbarErrorMessage(error.toString(), context);

      print(error.toString());

    });

  }
  Future<void> validateAccount(Map<String, String> mobile,BuildContext context) async {
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