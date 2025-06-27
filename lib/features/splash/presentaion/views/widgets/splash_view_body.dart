import 'package:flutter/material.dart';
import 'package:meal_monkey/features/auth/presentation/views/login_view.dart';
import 'package:meal_monkey/features/onboarding/presentation/views/onboarding_view.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    // initSlidingAnimation();
    navigateToNextScreen();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Stack(
        children: [
          Image.asset(AssetsData.splashBackground, fit: BoxFit.fill),

          Center(child: Image.asset(AssetsData.logo, width: screenWidth*.6,)),
        ],
      ),
    );
  }



  void navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));{
      Navigator.pushNamed(context, OnboardingView.routeName);
    }
    // final prefs = await SharedPreferences.getInstance();
    // final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    // if (!mounted) return;

    // if (isLoggedIn) {
    //   Navigator.pushReplacementNamed(context, HomeView.routeName);
    // } else {
    //   Navigator.pushReplacementNamed(context, LoginView.routeName);
    // }
  }
}
