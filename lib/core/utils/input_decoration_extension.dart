import 'package:flutter/material.dart';
import 'package:test_task/core/themes/app_text_styles.dart';

extension CustomInputDecoration on InputDecoration {
  static InputDecoration customDecoration({
    required String hintText,
    double borderRadius = 60,
    Color fillColor = Colors.white,
  }) {
    return InputDecoration(
      
      hintText: hintText,
      hintStyle: AppTextStyles.bold20primary.copyWith(color: Colors.grey),
      filled: true,
      fillColor: fillColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 1.5,),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(color: Colors.transparent, width: 1.5),
      ),
    );
  }
}
