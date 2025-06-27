import 'package:flutter/material.dart';
import 'package:meal_monkey/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const routeName = 'loginview';
  @override
  Widget build(BuildContext context) {
    return const LoginViewBody();
  }
}
