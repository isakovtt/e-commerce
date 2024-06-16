import 'package:flutter/material.dart';

import '../../../../utils/ui_constants/app_colors.dart';

class LafyuuNavigationBar extends StatelessWidget {
  const LafyuuNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: AppColors.backgroundWhite,
      elevation: 10,
      destinations:  const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined, color: AppColors.neutralGrey),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.search_rounded, color: AppColors.neutralGrey),
          label: 'Explore',
        ),
        NavigationDestination(
          icon:
              Icon(Icons.shopping_cart_outlined, color: AppColors.neutralGrey),
          label: 'Cart',
        ),
        NavigationDestination(
          icon: Icon(Icons.local_offer_outlined, color: AppColors.neutralGrey),
          label: 'Offer',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_2_outlined, color: AppColors.neutralGrey),
          label: 'Account',
        ),
      ],
    );
  }
}
