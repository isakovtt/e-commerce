import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/detail/detail_cubit.dart';
import '../../../../../cubits/home/home_cubit.dart';
import '../../../../../utils/ui_constants/sized_boxes.dart';
import '../../../detail/product_detail_page.dart';
import 'flash_item.dart';

class FlashSaleProducts extends StatelessWidget {
  const FlashSaleProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();
    return SizedBox(
      height: 240,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const SizedBox();
          } else if (state is HomeSuccess) {
            return ListView.separated(padding: const EdgeInsets.only(left: 16),
              itemCount: cubit.flashProducts!.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBoxes.w16,
              itemBuilder: (context, index) {
                final flash = cubit.flashProducts![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                                create: (context) =>
                                    DetailCubit()..getDetailProduct(flash.id),
                                child: const ProductDetailPage(),
                              )),
                    );
                  },
                  child: FlashItem(flash: flash),
                );
              },
            );
          }

          return const Text('error flashsale');
        },
      ),
    );
  }
}
