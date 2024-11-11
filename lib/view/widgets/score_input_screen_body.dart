import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/core/themes/app_colors.dart';
import 'package:test_task/core/themes/app_text_styles.dart';
import 'package:test_task/core/utils/input_decoration_extension.dart';
import 'package:test_task/core/utils/svg_images.dart';
import 'package:test_task/view/screens/score_display_screen.dart';

class ScoreInputScreenBody extends StatelessWidget {
   ScoreInputScreenBody({super.key});
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Ink(
      color: AppColors.backgroungColor.withOpacity(0.5),
      child: SizedBox(
        height: 330.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 63.h),
            Text('Enter Your Score', style: AppTextStyles.bold20primary),
            SizedBox(height: 20.h),
            // *****Score Input Field*****
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60.r),
              ),
              child: TextField(
                  cursorColor: AppColors.primaryColor,
                  style: AppTextStyles.bold30deepGreen,
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: CustomInputDecoration.customDecoration(
                    hintText: "Enter value between 0 and 8",
                  ),),
            ),
            SizedBox(height: 40.h),
            // *****Start Button*****
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final score = double.tryParse(_controller.text) ?? 0.0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScoreDisplayScreen(score: score),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.yellowColor,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 100.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppSvgImages.tennisIcon,colorFilter: const ColorFilter.mode(AppColors.blackColor,BlendMode.srcIn,)),
                    SizedBox(width: 15.w,),
                    Text(
                      'Start',
                      style:AppTextStyles.semiBold16black
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
          ),
        ),
      ),
    );
  }
}