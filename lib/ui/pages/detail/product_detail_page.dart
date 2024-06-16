import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/cubits/comment/comment_cubit.dart';
import 'package:lafyuu/ui/pages/detail/widgets/detail_product_image.dart';
import 'package:lafyuu/ui/pages/detail/widgets/detail_product_spesification.dart';
import 'package:lafyuu/utils/navigate.dart';

import '../../../cubits/detail/detail_cubit.dart';
import '../../../data/models/detail_product_response.dart';
import '../../../utils/ui_constants/app_colors.dart';
import '../../../utils/ui_constants/app_texts.dart';
import '../../../utils/ui_constants/sized_boxes.dart';
import '../../../utils/ui_constants/text_styles.dart';
import '../../global_widgets/global_button.dart';
import '../../global_widgets/global_page_indicator.dart';
import '../../global_widgets/global_rating_bar.dart';
import '../write_review/write_review_page.dart';
import 'widgets/app_bar_product_detail.dart';
import 'widgets/detail_product_color.dart';
import 'widgets/detail_product_name.dart';
import 'widgets/detail_product_review.dart';
import 'widgets/detail_product_size.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: const AppBarProductDetail(actions: []),
      body: SingleChildScrollView(
        child: BlocBuilder<DetailCubit, DetailState>(
          builder: (context, state) {
            if (state is DetailLoading || state is DetailInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is DetailSuccess) {
              final DetailProductResponse detailProduct = state.detailProduct;
              return Column(
                children: [
                  DetailProductImage(
                      detailProduct: detailProduct,
                      itemcount: state.detailProduct.images.length),
                  SizedBoxes.h16,
                  const Center(
                    child: GlobalPageIndicator(),
                  ),
                  SizedBoxes.h16,
                  DetailProductName(name: detailProduct.name),
                  SizedBoxes.h8,
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlobalRatingBar(
                            itemSize: 18, initialRating: detailProduct.rating),
                        SizedBoxes.h16,
                        Text(detailProduct.price,
                            style: TextStyles.primaryBlueBoldStyleSize21),
                        SizedBoxes.h24,
                        const DetailProductSize(),
                        const DetailProductColor(),
                        SizedBoxes.h24,
                        DetailProductSpesification(
                            detailProduct: detailProduct.brand),
                        SizedBoxes.h24,
                        Text(detailProduct.description),
                        SizedBoxes.h24,
                        BlocProvider(
                          create: (context) =>
                              CommentCubit()..getComment(detailProduct.id),
                          child: const DetailProductReview(),
                        ),
                        SizedBoxes.h24,
                        GlobalButton(
                          text: AppTexts.addToCart,
                          onTap: () => Navigate().navigatePush(
                            context,
                            const WriteReviewPage(),
                          ),
                        ),
                        SizedBoxes.h24,
                      ],
                    ),
                  )
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
