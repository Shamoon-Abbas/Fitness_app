import 'package:flutter/material.dart';

import 'onboarding_3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [
          Color(0xFF9DCEFF),
          Color(0xFF92A3FD),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight
    ),
    ),
        child: SafeArea(
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
                            color: Colors.white
                        ),)
                        // Color.lerp(Color(0xFFCC8FED), Color(0xFF9DCEFF), 0.3)
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
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding3()));
                  }, child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        Color(0xFF9DCEFF),
                        Color(0xFF92A3FD),
                      ],
                    ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                    blendMode: BlendMode.srcIn,
                    child:Text("Get Started",style: TextStyle(
                      fontFamily: 'semiBold',
                      fontSize: 20,
                      color: Colors.white
                  ),),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
