import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/app_texts.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class GoForgotPassword extends StatelessWidget {
  const GoForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppTexts.forgotPassword,
        style: TextStyles.primaryBlueBoldStyleSize22);
  }
}
