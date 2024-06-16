import 'package:flutter/material.dart';

import '../../../../../utils/ui_constants/text_styles.dart';

class SeeMore extends StatelessWidget {
  const SeeMore.category({
    super.key,
    this.text = 'Category',
    this.seeMoreText = 'More Category',
  });
  const SeeMore.flashSale({
    super.key,
    this.text = 'Flash Sale',
    this.seeMoreText = 'See More',
  });
  const SeeMore.megaSale({
    super.key,
    this.text = 'Mega Sale',
    this.seeMoreText = 'See More',
  });
  const SeeMore.reviewProduct({
    super.key,
    this.text = 'Review Product',
    this.seeMoreText = 'See More',
  });

  final String text;
  final String seeMoreText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyles.neutralDarkStyleSize21,
          ),
          const Spacer(),
          Text(
            seeMoreText,
            style: TextStyles.primaryBlueBoldStyleSize21,
          ),
        ],
      ),
    );
  }
}
