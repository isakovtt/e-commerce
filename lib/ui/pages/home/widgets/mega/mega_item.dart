import 'package:flutter/material.dart';

import '../../../../../data/models/mega_products_response.dart';
import '../../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../global_widgets/round_box.dart';
import 'mega_discount.dart';
import 'mega_discounted_price.dart';
import 'mega_image.dart';
import 'mega_name.dart';
import 'mega_price.dart';

class MegaItem extends StatelessWidget {
  const MegaItem({super.key, required this.mega});
  final MegaProductsResponse mega;
  @override
  Widget build(BuildContext context) {
    return RoundBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MegaImage(image: mega.image),
            SizedBoxes.h8,
            MegaName(name: mega.name),
            SizedBoxes.h8,
            MegaPrice(price: mega.price),
            SizedBoxes.h8,
            Row(
              children: [
                MegaDiscountedPrice(
                    discountedPrice: mega.discountedPrice.toString()),
                SizedBoxes.w8,
                MegaDiscount(discount: mega.discount.toString())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
