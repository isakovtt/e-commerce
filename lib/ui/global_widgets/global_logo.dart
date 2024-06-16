import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/ui_constants/app_images.dart';

class GlobalLogo extends StatelessWidget {
  const GlobalLogo.white({
    super.key,
    this.imageUrl = Images.iconWhite,
  });

  const GlobalLogo.blue({
    super.key,
    this.imageUrl = Images.iconBlue,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "$imageUrl",
    );
  }
}
