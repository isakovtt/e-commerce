import 'package:flutter/material.dart';

import '../../utils/ui_constants/app_colors.dart';

class GlobalUnderine extends StatelessWidget {
  const GlobalUnderine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        thickness: 2,
        color: AppColors.neutralLight,
      ),
    );
  }
}
