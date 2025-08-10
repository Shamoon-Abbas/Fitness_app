import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingGradientElevatedButton extends StatelessWidget{

  final String text;
  final VoidCallback onPressed;

  const OnboardingGradientElevatedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFA0CFFF), // LEFT
                Color(0xFF889DFF), // RIGHT
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(100)
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'semiBold',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent, // removes elevation shadow
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),

    );
  }

}