import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/utils/navigate.dart';

import '../../../../../cubits/detail/detail_cubit.dart';
import '../../../../../cubits/home/home_cubit.dart';
import '../../../../../data/models/recommended_products_response.dart';
import '../../../detail/product_detail_page.dart';
import 'recommended_item.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({super.key, this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const CircularProgressIndicator();
        } else if (state is HomeSuccess) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cubit.recommendedProducts!.length,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 320,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 13,
              ),
              itemBuilder: (context, index) {
                final RecommendedProductsResponse recommended =
                    cubit.recommendedProducts![index];
                return GestureDetector(
                  onTap: () {
                    Navigate().navigatePush(
                      context,
                      BlocProvider(
                        create: (context) =>
                            DetailCubit()..getDetailProduct(recommended.id),
                        child: const ProductDetailPage(),
                      ),
                    );
                  },
                  child: RecommendedItem(recommended: recommended),
                );
              },
            ),
          );
        }
        return const Text('error');
      },
    );
  }
}
