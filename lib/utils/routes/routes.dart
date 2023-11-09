import 'package:customerappdart/LoginPage.dart';
import 'package:customerappdart/main.dart';
import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/view/cart_screen.dart';
import 'package:customerappdart/view/login_screen.dart';
import 'package:customerappdart/view/myorders.dart';
import 'package:customerappdart/view/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../view/home_screen.dart';
import '../../view/otp_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argume = settings.arguments;
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage());

      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashScreen());
      case RoutesName.myorders:
        return MaterialPageRoute(builder: (BuildContext context) => MyOrders());

      case RoutesName.mycart:
        return MaterialPageRoute(builder: (BuildContext context) => CartScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
