// import 'package:ecommerce/views/credentials/login.dart';
// import 'package:ecommerce/views/credentials/register.dart';
import 'package:ecommerce/views/screens/splash.dart';
// import 'package:ecommerce/views/screens/home.dart';
// import 'package:ecommerce/views/screens/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}