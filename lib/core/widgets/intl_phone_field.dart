import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../utils/assets.dart';

class PhoneFieldExample extends StatelessWidget {

  String? phoneNumber;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;

   PhoneFieldExample({super.key, required this.hintText, this.prefixIcon, this.suffixIcon, required this.textInputType, this.onSaved, this.validator, this.controller, required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return
     SizedBox(
       width: 307.w,
       child: Column(
         children: [
           IntlPhoneField(
             decoration:     InputDecoration(
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
             initialCountryCode: 'EG',
             onChanged: (phone) {

               phoneNumber = phone.completeNumber;
             },
             onSaved: (phone) {
               phoneNumber = phone?.completeNumber;
             },
             validator: (phone) {
               if (phone == null || phone.number.isEmpty) {
                 return 'Please enter a valid phone number';
               }
               return null;
             },
           ),
         ],
       ),
     );
  }
}
