import 'package:ecommerce/views/screens/SecondOnBoarding.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            child: Text(
              "Buy Online",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "We offer you the best online deals and faster delivery service.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 32),
            child: SizedBox(
              child: Image.asset("assets/images/boarding1.png"),
            ),
          ),
          Container(
              height: 55,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondOnBoardingScreen()));
                  },
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Text("Skip", style: TextStyle(fontSize: 21, color: Colors.blue),),
                    )
                ],
              ),
            )
        ],
      ),
    ));
  }
}
