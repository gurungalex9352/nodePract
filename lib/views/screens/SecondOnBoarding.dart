import 'package:ecommerce/views/screens/ThirdOnBoarding.dart';
import 'package:flutter/material.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  SecondOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 45,
          ),
          Text(
            "Offers and Services",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We provide weekly and monthly discount deals and special offers along with gift vouchers.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Image.asset("assets/images/boarding2.png"),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 55,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.blue),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdOnBoardingScreen()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Skip",
            style: TextStyle(fontSize: 21, color: Colors.blue),
          )
        ],
      )),
    );
  }
}
