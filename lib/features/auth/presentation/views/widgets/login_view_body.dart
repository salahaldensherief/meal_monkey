import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/utils/assets.dart';
import 'package:meal_monkey/core/utils/custom_text_field.dart';
import 'package:meal_monkey/core/utils/passwoed_field.dart';
import 'package:meal_monkey/core/widgets/custom_button.dart';
import 'package:meal_monkey/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:meal_monkey/features/auth/presentation/views/widgets/social_login_botton.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'auth_app_bar.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 60.h),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                AuthAppBar(text1: 'Login', text2: 'Add your details to login'),
                SizedBox(height: 36.h),
                CustomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Your Email',
                  obscureText: false,
                ),
                SizedBox(height: 28.h),
                PasswordField(hintText: 'Password'),
                SizedBox(height: 28.h),
                CustomButton(
                  onPressed: () {},
                  text: 'Login',
                  color: (AppColors.primaryColor),
                  colorSide: AppColors.primaryColor,
                  fontColor: AppColors.whiteColor,
                ),
                SizedBox(height: 12.h),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot your password?',
                    style: TextStyles.medium15.copyWith(
                      color: AppColors.midGrayColor,
                    ),
                  ),
                ),
                SizedBox(height: 49.h),

                Text(
                  'or Login With',
                  style: TextStyles.medium15.copyWith(
                    color: AppColors.midGrayColor,
                  ),
                ),
                SizedBox(height: 28.h),

                SocialLoginBotton(
                  color: AppColors.blueColor,
                  image: AssetsData.Facebook,
                  text: 'Login with Facebook',
                  onPressed: () {},
                ),
                SizedBox(height: 28.h),
                SocialLoginBotton(
                  color: AppColors.redColor,
                  image: AssetsData.google,
                  text: 'Login with google',
                  onPressed: () {
                  },
                ),
                SizedBox(height: 50.h),

                DontHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
