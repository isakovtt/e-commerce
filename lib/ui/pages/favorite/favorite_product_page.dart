import 'package:flutter/material.dart';

import '../home/widgets/recommended/recommended_products.dart';
import '../../../utils/ui_constants/app_colors.dart';
import '../../../utils/ui_constants/text_styles.dart';

class FavoriteProductPage extends StatelessWidget {
  const FavoriteProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        toolbarHeight: 78,
        elevation: 2,
        backgroundColor: AppColors.backgroundWhite,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        title: Text(
          'Favorite Product',
          style: TextStyles.neutralDarkStyleSize24,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RecommendedProducts(
                icon: Icons.delete_outline_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
