import 'package:flutter/material.dart';
import 'package:meal_monkey/features/splash/presentaion/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName = 'splashview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: const SplashViewBody());
  }
}
