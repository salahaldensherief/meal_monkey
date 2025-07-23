import 'package:flutter/material.dart';
import 'package:meal_monkey/features/onboarding/presentation/views/widgets/page_view_item.dart';
import 'package:meal_monkey/features/onboarding/presentation/views/widgets/welcome_page_view.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: AssetsData.findFoodImage,
          subtitle:
              'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
          title: 'Find Food You Love',
        ),
        PageViewItem(
          image: AssetsData.deliveryImage,
          subtitle:
              'Fast food delivery to your home, office \n wherever you are',
          title: 'Fast Delivery',
        ),
        PageViewItem(
          image: AssetsData.trackingImage,
          subtitle:
              'Real time tracking of your food on the app \n once you placed the order',
          title: 'Live Tracking',
        ),

      ],
    );
  }
}
