import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_6.dart';
import 'widgets/onborading_image.dart';

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
            SizedBox(height: 70,),
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
        floatingActionButton: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 78,
                height: 78,
                child: CircularProgressIndicator(
                  value: 0.25, // 25% filled (semi-circle would be 0.5, adjust as needed)
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9DCEFF)),
                  backgroundColor: Colors.transparent,
                ),
              ),Container(height: 65,width: 65,
                child: FloatingActionButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding6()));
                },child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 20),backgroundColor: Color(0xFF543753),shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(40)),),
              ),
            ]
        )
    );
  }
}
