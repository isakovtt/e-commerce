import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../utils/ui_constants/app_colors.dart';

class TimerSlideCount extends StatelessWidget {
  const TimerSlideCount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 32,
      left: 24,
      child: SizedBox(
        height: 46,
        child: SlideCountdownSeparated(
          decoration: BoxDecoration(
            color: AppColors.backgroundWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          padding: EdgeInsets.all(8),
          separatorPadding: EdgeInsets.all(5),
          separatorStyle: TextStyle(
            color: AppColors.backgroundWhite,
            fontSize: 24,
          ),
          style: TextStyle(
              color: AppColors.neutralDark,
              fontWeight: FontWeight.bold,
              fontSize: 24),
          duration: Duration(days: 1),
        ),
      ),
    );
  }
}
