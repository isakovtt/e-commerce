import 'package:flutter/material.dart';

import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../utils/ui_constants/text_styles.dart';

class DetailProductSpesification extends StatelessWidget {
  const DetailProductSpesification({super.key, required this.detailProduct});
 final String detailProduct;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppTexts.specification, style: TextStyles.neutralDarkStyleSize21),
        Row(
          children: [
            Text(AppTexts.shown, style: TextStyles.neutralDarkStyleSize17),
            const Spacer(),
            Text(detailProduct, style: TextStyles.neutralGreyStyleSize18),
          ],
        ),
      ],
    );
  }
}
