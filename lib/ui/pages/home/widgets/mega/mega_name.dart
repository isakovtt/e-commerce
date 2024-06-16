import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class MegaName extends StatelessWidget {
  const MegaName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyles.neutralDarkStyleSize18,
      ),
    );
  }
}
