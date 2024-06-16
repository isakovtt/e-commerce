import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lafyuu/utils/ui_constants/app_images.dart';
import 'package:lafyuu/utils/ui_constants/box_decorations.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 70,
          height: 70,
          decoration: BoxDecorations.circularBorderRadius36,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              Images.shirt,
            ),
          ),
        );
  }
}
