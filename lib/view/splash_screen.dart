import 'package:customerappdart/view/login_screen.dart';
import 'package:customerappdart/view/product_screen.dart';
import 'package:customerappdart/view/productdetailscreen.dart';
import 'package:customerappdart/view/productlistscreen.dart';
import 'package:customerappdart/view/referandearn.dart';
import 'package:customerappdart/view/upcomingservices.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'Store.dart';
import 'createcomplaint.dart';
import 'home_screen.dart';
import 'orderdetailscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to display the splash screen
    Future.delayed(Duration(seconds: 3), () {
      checkIsLogin();
    });
    // Future.delayed(Duration(seconds: 3), () {
    //   // Navigate to the main screen
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => LoginScreen()),
    //   );
    // });
  }
  Future<void> checkIsLogin() async {
    // Example: Check if user is logged in
    bool isUserLoggedIn = await Store.getIsLogin() ?? false;

    if (isUserLoggedIn) {
      // Navigate to HomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      // Navigate to LoginScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your background color
      body: Center(
        child: FlareActor(
          'images/splash.png', // Replace with your animation path
          animation: 'splash', // Replace with your animation name
        ),
      ),
    );
  }
}