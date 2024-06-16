import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/ui_constants/app_colors.dart';

class GlobalPageIndicator extends StatelessWidget {
  const GlobalPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: PageController(),
        count: 5,
        effect: const WormEffect(
          activeDotColor: AppColors.primaryBlue,
          dotHeight: 8,
          dotWidth: 8,
        ),
        onDotClicked: (index) {});
  }
}
