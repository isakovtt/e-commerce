import 'package:flutter/material.dart';

import '../../utils/ui_constants/box_decorations.dart';
import '../../utils/ui_constants/text_styles.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.text,
    this.onTap,
    this.isLoading = false,
  });
  final String text;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecorations.circularBorderRadiusButton,
        height: 57,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator.adaptive()
              : Text(
                  text,
                  style: TextStyles.signInButtonTextStyle,
                ),
        ),
      ),
    );
  }
}
