import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class RecommendedName extends StatelessWidget {

  const RecommendedName({ super.key, required this.name });
final String name;
   @override
   Widget build(BuildContext context) {
       return Text(
              name,
              style: TextStyles.neutralDarkStyleSize18,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            );
  }
}