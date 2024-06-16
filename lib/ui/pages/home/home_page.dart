import 'package:flutter/material.dart';
import 'package:lafyuu/ui/pages/home/widgets/lafyuu_navigation_bar.dart';
import 'package:lafyuu/ui/pages/home/widgets/recommended/recommended_products.dart';

import '../../global_widgets/global_app_bar.dart';
import 'widgets/flash/flash_sale_products.dart';
import '../../global_widgets/global_page_indicator.dart';
import '../../../utils/ui_constants/sized_boxes.dart';
import 'widgets/banner_image.dart';
import 'widgets/category/category_products.dart';
import 'widgets/category/content_category_text.dart';
import 'widgets/mega/mega_sale_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlobalAppBar(),
      bottomNavigationBar: LafyuuNavigationBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BannerImage(),
              SizedBoxes.h16,
              GlobalPageIndicator(),
              SizedBoxes.h24,
              SeeMore.category(),
              SizedBoxes.h12,
              CategoryProducts(),
              SizedBoxes.h24,
              SeeMore.flashSale(),
              SizedBoxes.h12,
              FlashSaleProducts(),
              SizedBoxes.h24,
              SeeMore.megaSale(),
              SizedBoxes.h12,
              MegaSaleProducts(),
              BannerImage(),
              RecommendedProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
