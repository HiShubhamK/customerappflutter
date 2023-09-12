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

  TextEditingController phonenumbercontroller=TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authViewModel=Provider.of<AuthViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
                key: _formkey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: phonenumbercontroller,
                    decoration: InputDecoration(
                        hintText: 'Enter mobile no',
                        labelText: 'Mobile Number',
                        prefixIcon: Icon(
                          Icons.phone,
                          //color: Colors.green,
                        ),
                        errorStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                                Radius.circular(9.0)))))),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.green,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                     Utils.showsnackbar(validateMobile(phonenumbercontroller.text), context);
                     Map<String,String> data={
                       'mobileNo':phonenumbercontroller.text.toString(),
                     };
                     authViewModel.sendOTP(data, context);
                    },
                    child: const Text('Login'),
                  ),
                  width: MediaQuery.of(context).size.width,
              height: 50,
            ),
          ),

          ]),
    )),
    ),
    ],
    ),
    ),
    );
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return value;
  }
}