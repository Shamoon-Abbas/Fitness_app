import 'package:fitness_app/widgets/onboarding_FAB.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_4.dart';
import 'onboarding_5.dart';
import 'widgets/onborading_image.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildOnboardingImage("assets/images/onboard4.svg"),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Get Burn",
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
              "Let’s keep burning, to achieve your goals, it hurts only temporarily, if you give up now you will be in pain forever",
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