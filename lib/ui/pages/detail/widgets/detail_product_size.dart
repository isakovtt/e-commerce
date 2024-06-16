import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/app_localization.dart';
import 'package:lafyuu/cubits/local/local_cubit.dart';

import '../../../../cubits/detail/detail_cubit.dart';
import '../../../../utils/ui_constants/box_decorations.dart';
import '../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../utils/ui_constants/text_styles.dart';

class DetailProductSize extends StatelessWidget {
  const DetailProductSize({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LocalCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.translate("selectSize"),
              style: TextStyles.neutralDarkStyleSize21,
            ),
            TextButton(
                onPressed: () {
                  cubit.changeLanguage('az');
                },
                child: const Text('az')),
            TextButton(
                onPressed: () {
                  cubit.changeLanguage('en');
                },
                child: const Text('en')),
          ],
        ),
        BlocBuilder<DetailCubit, DetailState>(
          builder: (context, state) {
            if (state is DetailSuccess) {
              final productSize = state.detailProduct;
              return SizedBox(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBoxes.w16,
                  itemCount: productSize.availableSizes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final size = productSize.availableSizes[index].name;
                    return Center(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecorations.circularBorderRadius36,
                        child: Center(
                          child: Text(
                            size.toString(),
                            style: TextStyles.neutralDarkStyleSize18,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            return const Text('error select size');
          },
        ),
      ],
    );
  }
}
