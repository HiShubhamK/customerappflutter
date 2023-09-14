import 'dart:ffi';

import 'package:customerappdart/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:customerappdart/view_model/auth_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  Map userData = {};

  TextEditingController phonenumbercontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var splashscreenimg = 'images/splash.png';
    final authViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      // body: SingleChildScrollView(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(height: 65),
                Image.asset(splashscreenimg, height: 130, width: 130),
              ])),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Text("India's Hygiene Expert",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 43, 183, 122),
                        fontSize: 26)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Text("30+ years of legacy",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 43, 183, 122),
                        fontSize: 20)),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text("Login",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 43, 183, 122),
                                fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        Text("To Say Hi To Hygiene",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 10)),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),

                  // SizedBox(height: 20),
                  // Text("Login", style: const TextStyle(color: Colors.green, fontSize: 20)),
                  // SizedBox(height: 10),
                  // Text("To Say Hi To Hygiene", style: const TextStyle(color: Colors.grey, fontSize: 10)),
                  // SizedBox(height: 30),
                  Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                            controller: phonenumbercontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: 'Enter mobile no',
                                labelText: 'Mobile Number',
                                prefixIcon: Icon(
                                  Icons.phone,
                                  //color: Colors.green,
                                ),
                                errorStyle: TextStyle(fontSize: 18.0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(9.0))))),
                      ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 43, 183, 122),
                          elevation: 5,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          if (validateMobile(phonenumbercontroller.text)) {
                            Map<String, String> data = {
                              'mobileNo': phonenumbercontroller.text.toString(),
                            };
                            Utils.mobile=phonenumbercontroller.text.toString();
                            authViewModel.sendOTP(data, context);
                          } else {
                            Utils.flushbarErrorMessage(
                                'Please enter valid number!', context);
                          }
                        },
                        child: const Text('Login'),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                    ),
                  ),
                ]),
          )
          )
        ],
      ),
      // ),
    );
  }

  bool validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return false;
    else
      return true;
  }
}
