import 'package:flutter/material.dart';

import '../home/widgets/banner_image.dart';
import '../home/widgets/recommended/recommended_products.dart';
import '../../../utils/ui_constants/app_colors.dart';
import '../../../utils/ui_constants/sized_boxes.dart';
import '../../../utils/ui_constants/text_styles.dart';

class OfferScreenPage extends StatelessWidget {
  const OfferScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        toolbarHeight: 78,
        elevation: 2,
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.search_rounded,
            ),
          )
        ],
        backgroundColor: AppColors.backgroundWhite,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        title: Text(
          'Super Flash Sale',
          style: TextStyles.neutralDarkStyleSize24,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerImage(),
              SizedBoxes.h16,
              RecommendedProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
