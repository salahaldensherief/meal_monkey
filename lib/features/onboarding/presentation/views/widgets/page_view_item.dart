import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  final String image;
  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.07),
          Image.asset(image, height: screenHeight * 0.40),
          SizedBox(height: screenHeight * 0.1),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
