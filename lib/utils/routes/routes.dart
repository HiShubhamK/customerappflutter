import 'package:customerappdart/LoginPage.dart';
import 'package:customerappdart/main.dart';
import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/view/login_screen.dart';
import 'package:flutter/material.dart';

import '../../view/home_screen.dart';
import '../../view/otp_screen.dart';

class Routes{
  static Route<dynamic>  generateRoute(RouteSettings settings){
    final argume=settings.arguments;
    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context)=> MyHomePage());
     case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=> HomeScreen());


      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });


    }
  }
}