import 'package:flutter/material.dart';

class AppColors {
  static Color white = Colors.white;
  static Color greyColor = Colors.grey;
  static Color blackColor = Colors.black;
  static Color yellowColor = const Color(0xffFFCC00);
  static Color greenColor = const Color(0xff8AC54F);
  static Color darkGreenColor = const Color(0xff8AC54F);

  //Grediant Color
  static LinearGradient backgroundColor = const LinearGradient(colors: [
    Color(0xff89C44E),
    Color(0xff8AC54F),
    Color(0xffAAD178),
    Color.fromARGB(255, 252, 252, 201),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}
