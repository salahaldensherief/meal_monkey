import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/utils/assets.dart';
import 'package:meal_monkey/core/utils/passwoed_field.dart';
import 'package:meal_monkey/core/widgets/custom_button.dart';
import 'package:meal_monkey/core/widgets/intl_phone_field.dart';
import 'package:meal_monkey/features/auth/presentation/views/widgets/have_an_account.dart';

import '../../../../../core/utils/custom_text_field.dart';
import 'auth_app_bar.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 60.h),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                AuthAppBar(
                  text1: 'Login',
                  text2: 'Add your details to sign up',
                ),
                SizedBox(height: 28.h),
                CustomTextFormField(
                  textInputType: TextInputType.name,
                  hintText: 'Name',
                  obscureText: false,
                ),
                SizedBox(height: 28.h),
                CustomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 28.h),
                PhoneFieldExample(

                  obscureText: false,
                  textInputType: TextInputType.phone,

                  hintText: 'Mobile No',
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(

                  textInputType: TextInputType.streetAddress,
                  hintText: 'Address',
                  obscureText: false,
                ),
                SizedBox(height: 28.h),
                PasswordField(hintText: 'Password'),
                SizedBox(height: 28.h),
                PasswordField(hintText: 'Confirm Password'),
                SizedBox(height: 28.h),
                CustomButton(
                  onPressed: () {},
                  text: 'Sign Up',
                  color: AppColors.primaryColor,
                  colorSide: AppColors.primaryColor,
                  fontColor: AppColors.whiteColor,
                ),
                SizedBox(height: 18.h),
                HaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
