import 'package:flutter/material.dart';
import 'core/routes/routes.dart';
import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const MealMonkey());
}

class MealMonkey extends StatelessWidget {
  const MealMonkey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     initialRoute: SplashView.routeName,
     onGenerateRoute: onGenerateRoute,
    );
  }
}

