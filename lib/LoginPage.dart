import 'dart:ffi';

import 'package:customerappdart/view_model/auth_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var splashscreenimg = 'images/splash.png';

    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(splashscreenimg, height: 130, width: 130),
            SizedBox(height: 10),
            Text("India's Hygiene Expert",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(height: 10),
            Text("30+ years of legacy",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}

// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() {
//     // TODO: implement createState
//     return _LoginPage();
//   }
// }
//
// class _LoginPage extends State<LoginPage> {
//   var splashscreenimg = 'images/splash.png';
//
//   @override
//   Widget build(Object context) {
//     // TODO: implement build
//     return  Column(
//       children: <Widget>[
//         SizedBox(height: 60),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Image.asset(splashscreenimg, height: 50, width: 50),
//           ],
//         ),
//         SizedBox(height: 10),
//         Text("India's Hygiene Expert",style: const TextStyle(color: Colors.amberAccent,fontSize: 13)),
//         SizedBox(height: 10),
//         Text("30+ years of legacy",style: const TextStyle(color: Colors.amberAccent,fontSize: 12)),
//       ],
//     );
//   }
// }
