import 'package:flutter/material.dart';

class MegaImage extends StatelessWidget {
  const MegaImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: 70,
      height: 70,
    );
  }
}
