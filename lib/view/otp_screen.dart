import 'dart:async';

import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:customerappdart/view_model/auth_viewmodel.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// class OTPScreen extends StatefulWidget {
//   late var otp = '';
//   OTPScreen(this.otp);
//   @override
//   State<OTPScreen> createState() {
//     // TODO: implement createState
//     return _Otpscreen();
//   }
// }
//
// class _Otpscreen extends State<OTPScreen> {
//
//   var verificationCode1 = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.fromLTRB(20, 65, 20, 0),
//         // padding: const EdgeInsets.all(30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(height: 65),
//             Text('Enter the 4-digit code sent to you at'),
//             const SizedBox(height: 6),
//             const Text('+917738753827', textAlign: TextAlign.start),
//             const SizedBox(height: 20),
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   OtpTextField(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     numberOfFields: 4,
//                     cursorColor: Color.fromARGB(255, 43, 183, 122),
//                     borderColor: Color.fromARGB(255, 43, 183, 122),
//                     showFieldAsBox: true,
//                     onCodeChanged: (String code) {
//                       //handle validation or checks here
//                     },
//                     //runs when every textfield is filled
//                     onSubmit: (String verificationCode) {
//                       verificationCode1 = verificationCode.trim();
//                       if (verificationCode.toString().trim() ==
//                           otp.toString().trim()) {
//                         Utils.toastMessage('Login successfully!');
//                       } else {
//                         Utils.showsnackbar('Please enter valid otp', context);
//                       }
//                     }, // end onSubmit
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             Container(
//
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(5)),
//               child: Column(
//                 children: [
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "I didn't receive a code($_start) ",
//                       style: TextStyle(fontSize: 13, color: Colors.black),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                   onPressed: () {
//                     if (verificationCode1.toString().trim() ==
//                         otp.toString().trim()) {
//                       Utils.toastMessage('Login successfully!');
//                     } else {
//                       Utils.showsnackbar('Please enter valid otp', context);
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary:
//                         Color.fromARGB(255, 43, 183, 122), // Background color
//                   ),
//                   child: const Text('Submit')),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



class OTPScreen extends StatelessWidget {
  var otp = '';
  var verificationCode1 = '';
  int _remainingTime = 10; //initial time in seconds
  late Timer _timer;
  OTPScreen(this.otp);

  int _seconds = 60;
  int _minutes=0;
  int _hours=0;

  bool _isRunning = false;



  void _startTimer(){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if(_seconds>0){
          _isRunning=true;
          _seconds--;
        }else{
          _isRunning=false;
          _timer?.cancel();
        }
    });
  }

  void _pauseTimer(){
    setState(){
      _isRunning=false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var splashscreenimg = 'images/splash.png';
    _startTimer();
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined,color: Color.fromARGB(255, 43, 183, 122))),
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
                    child: Text('+917738753827', textAlign: TextAlign.start)),
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
                          otp.toString().trim()) {
                        Utils.toastMessage('Login successfully!');
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
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  TextButton(onPressed: () {}, child: Text(
                    "I didn't receive a code($_seconds)",
                    style: TextStyle(fontSize: 13,color: Colors.black),
                  ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if (verificationCode1.toString().trim() ==
                      otp.toString().trim()) {
                    Utils.toastMessage('Login successfully!');
                  } else {
                    Utils.showsnackbar('Please enter valid otp', context);
                  }
                },  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 43, 183, 122), // Background color
                ), child: const Text('Submit')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
