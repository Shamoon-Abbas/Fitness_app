import 'package:fitness_app/widgets/onboarding_FAB.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_1.dart';
import '../widgets/onborading_image.dart';

class Onboarding6 extends StatelessWidget {
  const Onboarding6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildOnboardingImage("assets/images/onboard6.svg"),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Text("Improve Sleep\nQuality",style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'bold'
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Text("Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7B6F72),
                    fontFamily: 'regular'
                ),),
            ),

          ],
        ),
      floatingActionButton: gradientFAB(
        progressValue: 1, // 75% for onboarding screen 3
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding1()));
        },
      ),
    );
  }
}
