import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class RecommendedDiscountedPrice extends StatelessWidget {
  const RecommendedDiscountedPrice({super.key, required this.discountedPrice});
  final String discountedPrice;
  @override
  Widget build(BuildContext context) {
    return Text(
      discountedPrice,
      style: TextStyles.lineThrought,
    );
  }
}
