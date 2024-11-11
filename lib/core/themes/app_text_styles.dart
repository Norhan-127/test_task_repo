import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/core/themes/app_colors.dart';

class AppTextStyles {
  static final TextStyle base = GoogleFonts.balooBhaijaan2();

  static final TextStyle bold20primary = base.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static final TextStyle bold20yellow = base.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.yellowColor,
  );

  static final TextStyle semiBold16black = base.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

  static final TextStyle bold30deepGreen = base.copyWith(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.deepGreenColor,
  );
  static final TextStyle medium12black = base.copyWith(
  fontSize: 12.sp,
  fontWeight: FontWeight.w300,
  color: AppColors.blackColor,
);
static final TextStyle bold18black = base.copyWith(
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
  color: AppColors.blackColor,
);
static final TextStyle medium18black = base.copyWith(
  fontSize: 18.sp,
  fontWeight: FontWeight.w500,
  color: AppColors.blackColor,
);
}
