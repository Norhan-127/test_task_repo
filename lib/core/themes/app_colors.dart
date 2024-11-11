import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xff2dc374);
  static const Color yellowColor = Color(0xffffd800);
  static const Color blackColor = Color(0xff000000);
  static const Color deepGreenColor = Color(0xff139651);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color backgroungColor = Color(0xffE7EEF0);

  static OutlineInputBorder outlineInputBorder(
      {required Color borderColor, int radius = 10}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius.toDouble()),
          bottomLeft: Radius.circular(radius.toDouble()),
        ),
        borderSide: BorderSide(color: borderColor, width: 1));
  }
}
