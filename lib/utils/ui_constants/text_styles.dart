import 'package:flutter/material.dart';

import 'app_colors.dart';

final class TextStyles {
  TextStyles._();

  static TextStyle get signInButtonTextStyle {
    return const TextStyle(
        fontSize: 25,
        color: AppColors.backgroundWhite,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get neutralGreyBoldStyle {
    return const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.neutralGrey);
  }

  static TextStyle get neutralDarkStyleSize24 {
    return const TextStyle(
        fontSize: 24,
        color: AppColors.neutralDark,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get neutralDarkStyleSize18 {
    return const TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 18,
        color: AppColors.neutralDark,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get neutralDarkStyleSize17 {
    return const TextStyle(
      fontSize: 17,
      color: AppColors.neutralDark,
    );
  }

   static TextStyle get neutralDarkStyleSize16 {
    return const TextStyle(
      fontSize: 17,
      color: AppColors.neutralDark,fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get neutralDarkStyleSize21 {
    return const TextStyle(
        fontSize: 21,
        color: AppColors.neutralDark,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get neutralDarkStyleSize20 {
    return const TextStyle(
        fontSize: 20,
        color: AppColors.neutralDark,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get neutralGreyStyleSize22 {
    return const TextStyle(fontSize: 22, color: AppColors.neutralGrey);
  }

  static TextStyle get neutralGreyStyleSize18 {
    return const TextStyle(fontSize: 18, color: AppColors.neutralGrey);
  }

  static TextStyle get primaryBlueBoldStyleSize22 {
    return const TextStyle(
        fontSize: 22,
        color: AppColors.primaryBlue,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get primaryBlueBoldStyleSize16 {
    return const TextStyle(
        fontSize: 16,
        color: AppColors.primaryBlue,
        fontWeight: FontWeight.bold);
  }

  static TextStyle get primaryBlueBoldStyleSize21 => const TextStyle(
      fontSize: 21, color: AppColors.primaryBlue, fontWeight: FontWeight.bold);

  static TextStyle get primaryRedBoldStyleSize15 {
    return const TextStyle(
        fontSize: 15, color: AppColors.primaryRed, fontWeight: FontWeight.bold);
  }

  static TextStyle get lineThrought {
    return const TextStyle(decoration: TextDecoration.lineThrough);
  }
}
