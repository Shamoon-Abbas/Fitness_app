import 'package:fitness_app/widgets/onboarding_FAB.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'onboarding_4.dart';
import 'onboarding_5.dart';
import '../widgets/onborading_image.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildOnboardingImage("assets/images/onboard3.svg"),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Track Your Goal",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'bold',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7B6F72),
                fontFamily: 'regular',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: gradientFAB(
        progressValue: 0.25, // 75% for onboarding screen 3
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding4()));
        },
      ),
    );
  }
}