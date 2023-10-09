import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: EdgeInsets.only(right: 18),
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              Icon(Icons.add_alert),
            ],
          ),
        )],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            
            Image.asset(
              'assets/images/bording4.png',
              height: 280,
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Column(  
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Flash Sale", style: TextStyle(fontSize: 25  , fontWeight: FontWeight.bold),),
                          Text("50% Discount", style: TextStyle(fontSize: 45  , fontWeight: FontWeight.bold),),
                          ElevatedButton(onPressed: (){}, child: Text('Explore'))
                        ],
                      ),
                    )
                  ],
                ),
            ),
          ]
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
