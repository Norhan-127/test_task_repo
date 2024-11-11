import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/core/themes/app_colors.dart';
import 'package:test_task/core/themes/app_text_styles.dart';
import 'package:test_task/core/utils/png_images.dart';
import 'package:test_task/core/utils/svg_images.dart';
import 'package:test_task/view/widgets/animated_number_score.dart';
import 'package:test_task/view/widgets/animated_progress_indicator.dart';

class ScoreDisplayScreen extends StatelessWidget {
  final double score;

  const ScoreDisplayScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
      backgroundColor: AppColors.whiteColor,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'GREEN.',
                style: AppTextStyles.bold20primary,
              ),
              TextSpan(
                text: 'MIND',
                style: AppTextStyles.bold20yellow,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SvgPicture.asset(AppSvgImages.notificationIcon),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(height: 280.h,),
                Container(
                  width: double.infinity,
                  height: 260.h,
                  decoration: BoxDecoration(
                    color: Colors.yellow, // اللون الأساسي للـ container
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Image.asset(
                        AppPngImages.profileImage,
                        scale: 2,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Hi, ',
                                style: AppTextStyles.bold18black),
                            TextSpan(
                                text: 'Omar',
                                style: AppTextStyles.medium18black),
                          ],
                        ),
                      ),
                      Text(
                        'Total Score',
                        style: AppTextStyles.medium12black,
                      ),
                      SizedBox(height: 5.h),
                      
                      // Animated Score Display
                      AnimatedScore(score: score),
                    ],
                  ),
                ),
                Container(
                  width:double.infinity,
                  height: 95.h,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      // Progress Indicator
                      AnimatedProgressIndicator(score: score)
                    ],
                  ),
                ),
                Positioned(
                  bottom: 85.h,
                  left: 20.w,
                  child: Image.asset(AppPngImages.boyImage,scale:3,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
