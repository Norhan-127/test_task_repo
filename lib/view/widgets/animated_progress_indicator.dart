import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/themes/app_colors.dart';
import 'package:test_task/core/themes/app_text_styles.dart';

class AnimatedProgressIndicator extends StatelessWidget {
  final double score;
  final double maxScore;

  const AnimatedProgressIndicator({
    super.key,
    required this.score,
    this.maxScore = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    // حساب النسبة المئوية بناءً على score و maxScore
    double percent = (score / maxScore).clamp(0.0, 1.0);

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          // Row of numbers from 1 to maxScore
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                maxScore.toInt(),
                (index) {
                  int currentNumber = index + 1;
                  // تحقق من الشرط لتحديد لون الرقم
                  Color textColor = currentNumber <=score
                      ? AppColors.yellowColor
                      : AppColors.deepGreenColor;
      
                  return Text(
                    '$currentNumber',
                    style: AppTextStyles.bold30deepGreen.copyWith(color: textColor),
                  );
                },
              ),
            ),
          ),
      
          // Linear Percent Indicator
          LinearPercentIndicator(
            width: 340.w,
            lineHeight: 15.0.h,
            percent: percent,
            backgroundColor: AppColors.deepGreenColor,
            progressColor: AppColors.yellowColor,
            animation: true,
            animationDuration: 2000,
            barRadius: const Radius.circular(8),
          ),
        ],
      ),
    );
  }
}
