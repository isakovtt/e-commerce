import 'package:flutter/material.dart';
import 'package:lafyuu/utils/ui_constants/text_styles.dart';

class DetailProductName extends StatelessWidget {
  const DetailProductName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: Text(
              name,
              style: TextStyles.neutralDarkStyleSize24,
              maxLines: 2,
            ),
          ),
          const Spacer(),
          const Icon(Icons.favorite_border_rounded),
        ],
      ),
    );
  }
}
