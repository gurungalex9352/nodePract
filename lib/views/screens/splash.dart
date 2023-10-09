import 'package:ecommerce/views/screens/onBoarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 38),
              child: Container(
                height: 160,
                child: Image.asset("assets/images/bird_logo.jpeg"),
              ),
            ),
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
