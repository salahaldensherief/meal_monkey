import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/utils/assets.dart';
import 'package:meal_monkey/core/widgets/custom_button.dart';
import 'package:meal_monkey/features/auth/presentation/views/login_view.dart';

import '../../../../auth/presentation/views/sign_up_view.dart';


class WelcomePageView extends StatelessWidget {
  const WelcomePageView({super.key});

  static const routeName = 'wellcompageview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  child: Image.asset(width: 375.w, AssetsData.subtraction),
                ),
                Container(
                  child: Image.asset(
                    width: 375.w,
                    AssetsData.backgroundObjects,
                  ),
                ),
                Positioned(
                  bottom: -100,
                  right: 0,
                  left: 0,

                  child: Align(
                    child: Image.asset(
                      height: 185.w,
                      width: 190.w,
                      AssetsData.logo,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 120.h),
            Text(
              'Discover the best foods from over 1,000 ',
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),  Text(
              'restaurants and fast delivery to your doorstep',
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 20.h,),
            CustomButton(
              fontColor: AppColors.whiteColor,
              colorSide: AppColors.primaryColor,
                color: AppColors.primaryColor,
                onPressed: (){
                Navigator.pushNamed(context, LoginView.routeName);
                }, text: 'Login'),
            SizedBox(height: 20.h,),
            CustomButton(

              colorSide: AppColors.primaryColor,
                color: AppColors.whiteColor,
                fontColor: AppColors.primaryColor,

                onPressed: (){
                  Navigator.pushNamed(context, SignUpView.routeName);

                }, text: 'Create an Account')
          ],

        ),
      ),
    );
  }
}
