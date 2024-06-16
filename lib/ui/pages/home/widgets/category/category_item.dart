import 'package:flutter/material.dart';

import '../../../../../data/models/categories_response.dart';
import 'category_icon.dart';
import 'category_name.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoriesResponse category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryIcon(),
        CategoryName(name: category.name),
      ],
    );
  }
}
