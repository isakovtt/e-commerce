import 'package:flutter/material.dart';

import '../../../../../data/models/recommended_products_response.dart';
import '../../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../global_widgets/global_rating_bar.dart';
import '../../../../global_widgets/round_box.dart';
import 'recommended_discount.dart';
import 'recommended_discounted_price.dart';
import 'recommended_image.dart';
import 'recommended_name.dart';
import 'recommended_price.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key, required this.recommended});

  final RecommendedProductsResponse recommended;

  @override
  Widget build(BuildContext context) {
    return RoundBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecommendedImage(image: recommended.image),
            SizedBoxes.h8,
            RecommendedName(name: recommended.name),
            SizedBoxes.h4,
            const GlobalRatingBar(initialRating: null),
            SizedBoxes.h16,
            RecommendedPrice(price: recommended.price),
            SizedBoxes.h8,
            Row(
              children: [
                RecommendedDiscountedPrice(
                    discountedPrice: recommended.discountedPrice.toString()),
                SizedBoxes.w8,
                RecommendedDiscount(discount: recommended.discount.toString()),
                SizedBoxes.w8,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
