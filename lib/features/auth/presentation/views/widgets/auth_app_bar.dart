import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/utils/app_text_styles.dart';
import 'package:meal_monkey/core/utils/assets.dart';

class AuthAppBar extends StatelessWidget {
 final String text1 , text2;
  const AuthAppBar({
    super.key, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontSize: 30.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          text2,
          style: TextStyles.medium15.copyWith(
            color: AppColors.midGrayColor
          )
        ),
      ],
    );
  }
}
