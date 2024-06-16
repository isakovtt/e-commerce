import 'package:flutter/material.dart';

class RecommendedImage extends StatelessWidget {
  const RecommendedImage({super.key, required this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        image!,
        height: 133,
        width: 133,
      ),
    );
  }
}
