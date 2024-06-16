import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_localization.dart';
import '../../../../cubits/detail/detail_cubit.dart';
import '../../../../utils/ui_constants/box_decorations.dart';
import '../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../utils/ui_constants/text_styles.dart';

class DetailProductColor extends StatelessWidget {
  const DetailProductColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppLocalizations.of(context)!.translate("selectColor"),
            style: TextStyles.neutralDarkStyleSize21),
        SizedBox(
          height: 90,
          child: BlocBuilder<DetailCubit, DetailState>(
            builder: (context, state) {
              if (state is DetailSuccess) {
                final detailColor = state.detailProduct;
                return ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBoxes.w16,
                  itemCount: detailColor.availableColors.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final color = detailColor.availableColors[index].name;
                    return Center(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecorations.circularBorderRadius36,
                        child: Center(child: Text(color)),
                      ),
                    );
                  },
                );
              }
              return const Text('color error');
            },
          ),
        ),
      ],
    );
  }
}
