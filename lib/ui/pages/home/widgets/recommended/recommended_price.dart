import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class RecommendedPrice extends StatelessWidget {
  const RecommendedPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: TextStyles.primaryBlueBoldStyleSize16,
    );
  }
}
