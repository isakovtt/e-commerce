import 'package:flutter/material.dart';
import 'package:lafyuu/ui/global_widgets/global_logo.dart';

import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../utils/ui_constants/text_styles.dart';

class TitleItems extends StatelessWidget {
  const TitleItems.titleLogin({
    super.key,
    this.title = AppTexts.welcomeToLAfyuu,
    this.subtitle = AppTexts.signInToContinue,
  });
  const TitleItems.titleRegister({
    super.key,
    this.title = AppTexts.letsGetStarted,
    this.subtitle = AppTexts.createNewAccount,
  });

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const GlobalLogo.blue(),
        SizedBoxes.h16,
        Text( title, style: TextStyles.neutralDarkStyleSize24),
        SizedBoxes.h8,
        Text( subtitle, style: TextStyles.neutralGreyStyleSize22)
      ],
    );
  }
}
