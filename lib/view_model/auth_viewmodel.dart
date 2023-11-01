import 'package:customerappdart/model/dashboardmodell.dart';
import 'package:customerappdart/model/getslotresponse.dart';
import 'package:customerappdart/model/productlistresponse.dart';
import 'package:customerappdart/model/referrelmodel.dart';
import 'package:customerappdart/repository/auth_repository.dart';
import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:customerappdart/view/bookslotscreen.dart';
import 'package:customerappdart/view/home_screen.dart';
import 'package:customerappdart/view/login_screen.dart';
import 'package:customerappdart/view/otp_screen.dart';
import 'package:customerappdart/view/product_screen.dart';
import 'package:customerappdart/view/referandearn.dart';
import 'package:customerappdart/view/upcomingservices.dart';
import 'package:customerappdart/view_model/validateaccount_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view/Screen_OTP.dart';
import '../view/myorders.dart';

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
  Future<void> productlistbypincode(Map<String, dynamic> pincode,BuildContext context) async {
    myRepo.productlistbypincode(pincode, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.responseMessage.toString(),context);
          var values=value.data.toString();

          Navigator.push(
              context,
              MaterialPageRoute(
                 // builder: (context) => OTPScreen(value.data.toString()),

                 builder: (context) => ProductScreen(value as ProductListResponse?),
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
  Future<void> getSlot(Map<String, dynamic> pincode,BuildContext context) async {
    myRepo.getslot(pincode, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.responseMessage.toString(),context);
          var values=value.data.toString();

          Navigator.push(
              context,
              MaterialPageRoute(
                 // builder: (context) => OTPScreen(value.data.toString()),

                 builder: (context) => BookSlotScreen(values  as GetSlotResponse),
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
  Future<void> GetProductCountInCart(Map<String, dynamic> userid,BuildContext context) async {
    myRepo.GetProductCountInCart(userid, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.data.toString(),context);


          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //        // builder: (context) => OTPScreen(value.data.toString()),
          //
          //        builder: (context) => ProductScreen(value as ProductListResponse?),
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
  Future<void> getReferralCodeResponse(Map<String, dynamic> mobile,BuildContext context) async {
    myRepo.getReferralCodeResponse(mobile, context).then((value) {
      if(kDebugMode){
        // Utils.showsnackbar(value.toString(), context);

        if(value.isSuccess==true){
          Utils.showsnackbar(value.responseMessage.toString(), context);
          var values=value.data.toString();
          Navigator.push(
              context,
              MaterialPageRoute(
                 // builder: (context) => OTPScreen(value.data.toString()),

                 builder: (context) => MyOrders(),
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
          Utils.saveToken(Utils.TOKEN);
          Utils.customerid=value.data!.productCustomerData!.id as int;
          ValidateAccountViewModel validateAccountViewModel=new ValidateAccountViewModel();
          validateAccountViewModel.saveToken(value);
          print("Response data: ${Utils.TOKEN}");



          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UpcomingServiceScreen(),
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
class Profile {
  final String name;
  final String imageUrl;
  final String description;
  final String startdate;
  final String enddate;
  final String location;
  final String amount;
  final String status;

  Profile({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.startdate,
    required this.enddate,
    required this.location,
    required this.amount,
    required this.status,
  });
}
