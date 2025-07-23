import 'package:flutter/material.dart';
import 'package:meal_monkey/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:meal_monkey/features/onboarding/presentation/views/widgets/welcome_page_view.dart';

import '../../../features/auth/presentation/views/login_view.dart';
import '../../../features/splash/presentaion/views/splash_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';

Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
      case WelcomePageView.routeName:
      return MaterialPageRoute(builder: (context) => const WelcomePageView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
      case SignUpView.routeName:
    return MaterialPageRoute(builder: (context) => const SignUpView());


    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }

}