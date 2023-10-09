import 'package:ecommerce/views/screens/home.dart';
import 'package:flutter/material.dart';

class ThirdOnBoardingScreen extends StatelessWidget {
  ThirdOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              "Portability and Flexibility in Online Shopping",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Now, you can order your packages and items anywhere from the world with the access of internet service.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset("assets/images/bording4.png"),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 55,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
      ),
    );
  }
}
