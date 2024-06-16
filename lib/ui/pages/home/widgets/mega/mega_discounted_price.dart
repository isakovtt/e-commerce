import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class MegaDiscountedPrice extends StatelessWidget {
  const MegaDiscountedPrice({super.key, required this.discountedPrice});
  final String discountedPrice;

  @override
  Widget build(BuildContext context) {
    return Text(
      discountedPrice,
      style: TextStyles.lineThrought,
    );
  }
}
