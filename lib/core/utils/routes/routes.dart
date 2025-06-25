import 'package:flutter/material.dart';

import '../../../features/auth/presentation/views/login_view.dart';
import '../../../features/splash/presentaion/views/splash_view.dart';

Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
  case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());


    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }

}