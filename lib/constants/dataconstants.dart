import 'package:flutter/material.dart';

class DataConstants {
  static Color activeColor = const Color(0xff65ADC3);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color blueColor = const Color(0xff65ADC3);
  static Color inActiveColor = const Color(0xffEEEEEE);
  static Color blackColor = const Color(0xff020202);
  static Color skipColor = const Color(0xff322E35);
  static Color lightBlackColor = const Color(0xff49454C);
  static String fontFamily = "Quicksand";
  static double height = 2.0;
  static double twentyFive = 25.0;
  static double twenty = 20.0;
  static double twentyFour = 24.0;
  static double eighteen = 18.0;
  static double seventeen = 17.0;
  static double sixteen = 16.0;
  static double thirteen = 13.0;
  static double fourteen = 14.0;
  static double twelve = 12.0;

  static commonTextStyle(
      {required FontWeight weight,
      required double fontSize,
      double height = 1.5,
      required Color color}) {
    return TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: fontSize,
      height: height,
      fontFamily: fontFamily,
    );
  }
}
