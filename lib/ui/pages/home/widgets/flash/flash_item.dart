import 'package:flutter/material.dart';
import 'package:lafyuu/data/models/flash_products_response.dart';
import '../../../../global_widgets/round_box.dart';
import '../../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../../utils/ui_constants/text_styles.dart';

class FlashItem extends StatelessWidget {
  const FlashItem({super.key, required this.flash});
  final FlashProductsResponse flash;
  @override
  Widget build(BuildContext context) {
    return RoundBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                flash.image,
                width: 70,
                height: 70,
              ),
              SizedBoxes.h8,
              SizedBox(
                width: 110,
                child: Text(flash.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyles.neutralDarkStyleSize18),
              ),
              SizedBoxes.h8,
              Text(flash.price, style: TextStyles.primaryBlueBoldStyleSize16),
              SizedBoxes.h8,
              Row(
                children: [
                  Text(flash.discountedPrice.toString(),
                      style: TextStyles.lineThrought),
                  SizedBoxes.w8,
                  Text(flash.discount.toString(),
                      style: TextStyles.primaryRedBoldStyleSize15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
