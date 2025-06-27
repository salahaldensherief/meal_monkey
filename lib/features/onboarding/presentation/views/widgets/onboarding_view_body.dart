import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/features/auth/presentation/views/login_view.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'onboarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: OnBoardingPageview(pageController: pageController),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    activeColor: AppColors.primaryColor,
                    color:
                        currentPage == 2
                            ? AppColors.primaryColor
                            : Colors.grey.withOpacity(.5),
                  ),
                  position: currentPage.toDouble(),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () {
                    if (currentPage < 2) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginView.routeName);
                    }
                  },
                  text: currentPage < 2 ? 'Next' : 'Start now',
                ),
                SizedBox(height: screenHeight * 0.04),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
