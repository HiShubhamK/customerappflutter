import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputFeiled.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            SizedBox(height: 10),
            Text("Login", style: const TextStyle(color: Color.fromARGB(255, 43, 183, 122), fontSize: 20)),
            SizedBox(height: 10),
            Text("To Say Hi To Hygiene", style: const TextStyle(color: Color.fromARGB(255, 43, 183, 122), fontSize: 20)),
            SizedBox(height: 10),
            Text("Mobile Number", style: const TextStyle(color: Colors.black, fontSize: 20)),
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: InputField(),
            ),
            SizedBox(
              height: 40,
            ),
            Button()
          ],
        ));
  }
}
// @override
// Widget build() {
//   // TODO: implement build
//   return Padding(
//       padding: EdgeInsets.all(30),
//       child: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 40,
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(10)),
//             child: InputField(),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Button()
//         ],
//       ));
// }
