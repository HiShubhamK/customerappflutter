import 'package:customerappdart/utils/utils.dart';
import 'package:customerappdart/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:customerappdart/view_model/auth_viewmodel.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class OTPScreen extends StatelessWidget {
  var otp='';
  var verificationCode1='';

  OTPScreen(this.otp);
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OTP Verification',
            ),
            Text("", style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40.0),
            const Text('Enter OTP', textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 4,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                if(verificationCode.toString().trim()==otp.toString().trim()){
                  verificationCode1=verificationCode.trim();


                }else{
                  Utils.showsnackbar('Please enter valid otp',context);
                }

              }, // end onSubmit
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                if(verificationCode1.toString().trim()==otp.toString().trim()){
                  if(Utils.mobile!="") {
                    Map<String, dynamic> data = {
                      'mobileNo': Utils.mobile.toString(),
                    };
                    Utils.toastMessage('Login successfully!');

                    authViewModel.validateAccount(data, context);
                    // authViewModel.Dashboard(data, context);
                  }
                }else{
                  Utils.showsnackbar('Please enter valid otp',context);

                }
              }, child: const Text('Submit')),
            ),
          ],
        ),
      ),
    );
  }
}