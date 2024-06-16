import 'package:flutter/material.dart';
import 'package:lafyuu/ui/global_widgets/global_rating_bar.dart';
import 'package:lafyuu/utils/ui_constants/app_colors.dart';
import 'package:lafyuu/utils/ui_constants/box_decorations.dart';
import 'package:lafyuu/utils/ui_constants/input_decorations.dart';
import 'package:lafyuu/utils/ui_constants/sized_boxes.dart';

import '../../../utils/ui_constants/app_texts.dart';
import '../../../utils/ui_constants/text_styles.dart';
import '../../global_widgets/global_input.dart';
import '../detail/widgets/app_bar_product_detail.dart';

class WriteReviewPage extends StatelessWidget {
  const WriteReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarProductDetail(appBarTitle: AppTexts.writeReview),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.pleaseWriteOverall,
              style: TextStyles.neutralDarkStyleSize16,
            ),
            SizedBoxes.h16,
            const GlobalRatingBar(itemSize: 32,initialRating: null),
            SizedBoxes.h24,
            Text(
              AppTexts.writeYourReview,
              style: TextStyles.neutralDarkStyleSize18,
            ),
            SizedBoxes.h12,
            const GlobalInput(
              hintText: AppTexts.writeYourReviewHere,
              style: InputDecorations.inputReviewTextStyle,
              maxLines: 5,
            ),
            SizedBoxes.h24,
            Text(
              AppTexts.addPhoto,
              style: TextStyles.neutralDarkStyleSize18,
            ),
            SizedBoxes.h12,
            SizedBox(
                width: 72,
                height: 72,
                child: DecoratedBox(
                  decoration: BoxDecorations.circularBorderRadius,
                  child: const Icon(
                    Icons.add,
                    color: AppColors.neutralGrey,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
