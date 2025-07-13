import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

Widget buildOnboardingImage(String assetPath) {
  return Center(
    child: FittedBox(
      fit: BoxFit.contain,
      child: SvgPicture.asset(
        assetPath,
        width: 500, // Fixed width or height
      ),
    ),
  );
}
