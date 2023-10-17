import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:customerappdart/utils/routes/routes.dart';
import 'package:customerappdart/utils/routes/routes_name.dart';
import 'package:customerappdart/view/home_screen.dart';
import 'package:customerappdart/view/login_screen.dart';
import 'package:customerappdart/view/otp_screen.dart';
import 'package:customerappdart/view/productdetail_screen.dart';
import 'package:customerappdart/view/splash_screen.dart';
import 'package:customerappdart/view_model/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> AuthViewModel())

    ],
    child: MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.green,

      ),
      // home: MyHomePage(),

      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
    ),);
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 0),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                // SecondScreen()
              ProductDetailsScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: AssetImage(
           'images/splash.png'
          ),
          nextScreen: LoginScreen(),

          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white));

  }
}