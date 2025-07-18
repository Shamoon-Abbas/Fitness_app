import 'package:fitness_app/widgets/onboarding_FAB.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_6.dart';
import '../widgets/onborading_image.dart';

class Onboarding5 extends StatelessWidget {
  const Onboarding5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Center(child: SvgPicture.asset("assets/images/onboard3.svg",
            //   height: 523,)),
            buildOnboardingImage("assets/images/onboard5.svg"),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Text("Eat Well",style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'bold'
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Text("Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7B6F72),
                    fontFamily: 'regular'
                ),),
            ),

          ],
        ),
      floatingActionButton: gradientFAB(
        progressValue: 0.75, // 75% for onboarding screen 3
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding6()));
        },
      ),
    );
  }
}
