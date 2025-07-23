// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/utils/app_text_styles.dart';
import 'package:meal_monkey/core/utils/assets.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.textInputType,
    this.onSaved,
    this.controller,
    this.obscureText = false,
    this.validator,
  });

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 307.w,
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: textInputType,
            onSaved: onSaved,
            validator:
                validator ??
                (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field cannot be empty';
                  }
                  return null;
                },

            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGrayColor),
                borderRadius: BorderRadius.circular(28),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGrayColor),
                borderRadius: BorderRadius.circular(28),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGrayColor),
                borderRadius: BorderRadius.circular(28),
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.grayColor,
                fontSize: 14.sp,
                fontFamily: 'Metropolis',
              ),

              contentPadding: EdgeInsets.symmetric(
                horizontal: 34.w,
                vertical: 16.h,
              ),
              filled: true,
              fillColor: AppColors.lightGrayColor,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
