import 'package:flutter/material.dart';

import 'app_colors.dart';

class BoxDecorations {
  BoxDecorations._();
  static BoxDecoration get circularBorderRadius {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.neutralLight, width: 2));
  }

  static BoxDecoration get circularBorderRadius36 {
    return BoxDecoration(
        border: Border.all(width: 2, color: AppColors.neutralLight),
        borderRadius: BorderRadius.circular(36),
        color: AppColors.backgroundWhite);
  }

  static BoxDecoration get circularBorderRadiusButton {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: AppColors.primaryBlue);
  }
}
