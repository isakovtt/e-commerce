import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/app_texts.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

import '../../utils/ui_constants/sized_boxes.dart';
import 'global_line.dart';

class GlobalDivider extends StatelessWidget {
  const GlobalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  const GlobalUnderine(),
                  SizedBoxes.w28,
                  Text( AppTexts.or, style: TextStyles.neutralGreyBoldStyle),
                  SizedBoxes.w28,
                  const GlobalUnderine(),
                ],
              );
  }
}