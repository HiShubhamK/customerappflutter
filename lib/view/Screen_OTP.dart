import 'dart:async';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';

import '../view_model/auth_viewmodel.dart';

class ScreenOTP extends StatefulWidget {
  const ScreenOTP({Key? key, required String this.otp, required String this.mobno}) : super(key: key);
  final String otp;
  final String mobno;

  @override
  State<ScreenOTP> createState() {
    // TODO: implement createState
    return _ScreenOTP();
  }
}

class _ScreenOTP extends State<ScreenOTP> {
  int _seconds = 59;
  bool _isRunning = false;
  Timer? _timer;
  var verificationCode1 = '';
  var textdata = "";

  int _secondsRemaining = 60;
  bool _timerActive = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      _isRunning=true;
    });

    // Start the timer
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          textdata = "Resend code in 00:$_seconds";
          _isRunning = true;
          _seconds--;
        });
      } else if (_seconds == 1){
        textdata = "Resend Code";
        _isRunning = false;
        // Timer has finished, you can perform actions here
        _timer?.cancel(); // Stop the timer
      }else{
        textdata = "Resend Code";
        _isRunning = false;
        _timer?.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // _startTimer();
    final authViewModel = Provider.of<AuthViewModel>(context);

    return Scaffold(
      body: Container(
        // margin: EdgeInsets.fromLTRB(20, 65, 20, 0),
        // padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_outlined,
                          color: Color.fromARGB(255, 43, 183, 122))),
                ],
              ),
            ),
            // Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 43, 183, 122)),
            // Image.asset(splashscreenimg, height: 30, width: 30),
            SizedBox(height: 20),

            Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text('Enter the 4-digit code sent to you at')),
              ],
            ),
            const SizedBox(height: 6),

            Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text('+91' + Utils.mobile, textAlign: TextAlign.start)),
              ],
            ),

            const SizedBox(height: 20),

            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OtpTextField(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    numberOfFields: 4,
                    borderColor: Color.fromARGB(255, 43, 183, 122),
                    cursorColor: Color.fromARGB(255, 43, 183, 122),
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      verificationCode1 = verificationCode.trim();
                      if (verificationCode.toString().trim() ==
                          widget.otp.toString().trim()) {
                        // Utils.toastMessage('Login successfully!');
                      } else {
                        Utils.showsnackbar('Please enter valid otp', context);
                      }
                    }, // end onSubmit
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      if(textdata=="Resend code"){

                      }
                    },
                    child: Text(
                              textdata,
                              style: TextStyle(fontSize: 13, color: Colors.black),
                            ),
                    // child: _isRunning
                    //     ? Text(
                    //         "Resend code in 00: $_seconds",
                    //         style: TextStyle(fontSize: 13, color: Colors.black),
                    //       )
                    //     : Text(
                    //         "Resend code",
                    //         style: TextStyle(fontSize: 13, color: Colors.black),
                    //       ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Map<String, dynamic> data = {
                        'mobileNo': Utils.mobile.toString(),
                      };
                      if (verificationCode1.toString().trim() ==
                          widget.otp.toString().trim()) {
                        // Utils.toastMessage('Login successfully!');
                        authViewModel.validateAccount(data, context);
                      } else {
                        Utils.showsnackbar('Please enter valid otp', context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color.fromARGB(255, 43, 183, 122), // Background color
                    ),
                    child: const Text('Submit')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer?.cancel();
    }
    super.dispose();
  }
}
