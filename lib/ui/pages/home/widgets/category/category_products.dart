import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/home/home_cubit.dart';
import '../../../../../utils/ui_constants/sized_boxes.dart';
import 'category_item.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          const SizedBox(
              height: 20, width: 20, child: CircularProgressIndicator());
        } else if (state is HomeSuccess) {
          return SizedBox(
            height: 90,
            child: ListView.separated(padding: const EdgeInsets.only(left: 8),
              separatorBuilder: (context, index) => SizedBoxes.w12,
              itemCount: cubit.categories!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final category = cubit.categories![index];
                return CategoryItem(category: category);
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
