import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: InkWell(
          onTap: () {

            //action
           // Utils.flushbarErrorMessage('Welcome',context);

          },
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
