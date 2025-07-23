import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/core/utils/assets.dart';

import '../../../../../core/utils/app_text_styles.dart';

class SocialLoginBotton extends StatelessWidget {
  const SocialLoginBotton({
    super.key,
    required this.onPressed,
    required this.image,
    required this.text,
    required this.color,
  });
  final VoidCallback onPressed;
  final String image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 315.w,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image, width: 7.33.w, height: 15.h),
            SizedBox(width: 30.w),
            Text(
              text,
              style: TextStyles.medium15.copyWith(
                color: AppColors.whiteColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
