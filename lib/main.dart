import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/routes.dart';
import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const MealMonkey());
}

class MealMonkey extends StatelessWidget {
  const MealMonkey({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: Colors.white,

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: SplashView.routeName,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
