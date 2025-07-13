import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_1.dart';
import 'widgets/onborading_image.dart';

class Onboarding6 extends StatelessWidget {
  const Onboarding6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildOnboardingImage("assets/images/onboard6.svg"),
            SizedBox(height: 70,),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding1()));
                },child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 20),backgroundColor: Color(0xFF543753),shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(40)),),
              ),
            ]
        )
    );
  }
}
