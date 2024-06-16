import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/detail/detail_cubit.dart';
import '../../../../../cubits/home/home_cubit.dart';
import '../../../../../utils/ui_constants/sized_boxes.dart';
import '../../../detail/product_detail_page.dart';
import 'mega_item.dart';

class MegaSaleProducts extends StatelessWidget {
  const MegaSaleProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();
    return SizedBox(
      height: 240,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const SizedBox(width: 10,height: 10,);
          } else if (state is HomeSuccess) {
            return ListView.separated(padding: const EdgeInsets.only(left: 16),
              itemCount: cubit.megaProducts!.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBoxes.w16,
              itemBuilder: (context, index) {
                final mega = cubit.megaProducts![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) =>
                              DetailCubit()..getDetailProduct(mega.id),
                          child: const ProductDetailPage(),
                        ),
                      ),
                    );
                  },
                  child: MegaItem(mega: mega),
                );
              },
            );
          }
          return const Text('error flash product');
        },
      ),
    );
  }
}
