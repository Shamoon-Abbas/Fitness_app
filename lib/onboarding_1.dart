import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Fitnest",style: TextStyle(
                  fontFamily: "semiBold",
                  fontSize: 30
                ),),
                Text("X",style: TextStyle(
                  fontSize: 80
                ),)
              ],
            ),
          ),
          SizedBox(height: 50,),
          Text("Everybody Can Train")
        ],
      ),
    );
  }
}
