import 'package:flutter/material.dart';
import 'package:meal_monkey/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
static const routeName = 'onboardingview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingViewBody());
  }
}
