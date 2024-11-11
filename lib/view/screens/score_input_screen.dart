import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/themes/app_colors.dart';
import 'package:test_task/core/themes/app_text_styles.dart';
import 'package:test_task/core/utils/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/view/widgets/score_input_screen_body.dart';

class ScoreInputScreen extends StatelessWidget {

  const ScoreInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroungColor.withOpacity(0.5),
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
      body:  ScoreInputScreenBody(),
    );
  }
}
