import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/ui_constants/box_decorations.dart';
import '../../utils/ui_constants/app_images.dart';
import '../../utils/ui_constants/app_texts.dart';
import '../../utils/ui_constants/text_styles.dart';

class SosialMediaButton extends StatelessWidget {
  const SosialMediaButton.google({
    super.key,
    this.text = AppTexts.loginWithGoogle,
    this.widthFactor = 2,
    this.imageUrl = Images.iconGoogle,
  });

  const SosialMediaButton.facebook({
    super.key,
    this.text = AppTexts.loginWithFacebook,
    this.widthFactor = 1.8,
    this.imageUrl = Images.iconFacebook,
  });

  final String text;
  final double? widthFactor;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorations.circularBorderRadius,
      height: 57,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(
                width: 23,
                "$imageUrl",
                alignment: Alignment.bottomLeft,
                fit: BoxFit.fitWidth),
            Center(
              widthFactor: widthFactor,
              child: Text(
                text,
                style: TextStyles.neutralGreyBoldStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
