import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class MegaDiscount extends StatelessWidget {
  const MegaDiscount({super.key, required this.discount});

  final String discount;

  @override
  Widget build(BuildContext context) {
    return Text(
      discount,
      style: TextStyles.primaryRedBoldStyleSize15,
    );
  }
}
