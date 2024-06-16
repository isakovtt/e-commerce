import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GlobalRatingBar extends StatelessWidget {
  const GlobalRatingBar({super.key, this.itemSize = 12, required this.initialRating});

  final double itemSize;
 final double? initialRating;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
          initialRating:  initialRating??0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: itemSize,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, index) {
            return const Icon(
              Icons.star,
              color: Colors.amber,
            );
          },
          onRatingUpdate: (rating) {},
        );
  }
}
