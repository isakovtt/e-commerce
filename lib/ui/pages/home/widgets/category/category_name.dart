import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Center(
        child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
