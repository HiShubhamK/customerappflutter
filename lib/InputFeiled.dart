import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            controller: firstNameController,
            keyboardType: TextInputType.phone,

            decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "Enter Your Mobile no",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
//   @override
//   Widget build() {
//     return Column(children: <Widget>[
//     Container(
//     padding: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//     border: Border(bottom: BorderSide(color: Colors.grey))
//     ),
//     child: TextField(
//     decoration: InputDecoration(
//     hintText: "Enter Your Mobile no",
//     hintStyle: TextStyle(color: Colors.grey),
//     border: InputBorder.none
//     ),
//     ),
//     ),
//
//     ],
//     );
// }
}
