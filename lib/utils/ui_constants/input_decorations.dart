import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/app_colors.dart';

class InputDecorations {
  const InputDecorations._();

  static InputBorder activeOutlineInput = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(width: 2, color: AppColors.primaryBlue),
  );

  static InputBorder outlineInput = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(width: 2, color: AppColors.neutralLight),
  );

  static const TextStyle hintTextStyle =
      TextStyle(color: AppColors.neutralGrey,);

  static const TextStyle inputTextStyle =
      TextStyle(fontSize: 18, color: AppColors.neutralGrey);

      static const TextStyle inputReviewTextStyle =
      TextStyle(fontSize: 18, color: AppColors.neutralGrey);

  static const TextStyle activeInputTextStyle = TextStyle(
      fontSize: 18, color: AppColors.neutralGrey, fontWeight: FontWeight.bold);
}
