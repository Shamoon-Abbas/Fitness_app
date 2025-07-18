import 'package:fitness_app/widgets/onboarding_gradient_elevatedButton.dart';
import 'package:flutter/material.dart';

import 'onboarding_2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("Fitnest",style: TextStyle(
                        fontFamily: "bold",
                        fontSize: 46,
                      ),),
                      Text("X",style: TextStyle(
                        fontSize: 66,
                        fontFamily: "bold",
                        color: Color.lerp(Color(0xFFCC8FED), Color(0xFF9DCEFF), 0.3)
                      ),)
                    ],
                  ),
                  Text("Everybody Can Train",style: TextStyle(
                      fontFamily: 'regular',
                      fontSize: 25,
                      color: Color(0xFF7B6F72)
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: OnboardingGradientElevatedButton(text: 'Get Started', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding2()));
              },)
            )
          ],
        ),
      ),
    );
  }
}
