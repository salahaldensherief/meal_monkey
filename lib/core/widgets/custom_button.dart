import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_text_styles.dart';
import '../utils/assets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.colorSide,
    required this.fontColor,
  });
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Color colorSide;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: Size(307.w, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          backgroundColor: color,
          side: BorderSide(color: colorSide),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.bold16.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
