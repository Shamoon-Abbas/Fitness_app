import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget gradientFAB({required double progressValue, required VoidCallback onPressed}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      SizedBox(
        width: 78,
        height: 78,
        child: CircularProgressIndicator(
          value: progressValue,
          strokeWidth: 3,
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9DCEFF)),
          backgroundColor: Colors.transparent,
        ),
      ),
      Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFF9DCEFF),
              Color(0xFF92A3FD),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: InkWell(
          customBorder: CircleBorder(),
          onTap: onPressed,
          child: Center(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    ],
  );
}