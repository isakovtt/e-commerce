import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/comment/comment_cubit.dart';
import '../../../../data/models/comment_product_response.dart';
import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../utils/ui_constants/text_styles.dart';
import '../../../global_widgets/global_rating_bar.dart';
import '../../home/widgets/category/content_category_text.dart';

class DetailProductReview extends StatelessWidget {
  const DetailProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentCubit, CommentState>(
      builder: (context, state) {
        if (state is CommentLoading) {
          return const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator.adaptive());
        } else if (state is CommentSuccess) {
          final CommentProductResponse comment = state.commentResponse.first;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SeeMore.reviewProduct(),
              GlobalRatingBar(
                  itemSize: 18, initialRating: comment.rating.toDouble()),
              SizedBoxes.h16,
              Row(
                children: [
                  const CircleAvatar(radius: 32),
                  SizedBoxes.w16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(comment.user.fullName,
                          style: TextStyles.neutralDarkStyleSize21),
                      GlobalRatingBar(
                        initialRating: comment.rating.toDouble(),
                        itemSize: 18,
                      )
                    ],
                  ),
                ],
              ),
              SizedBoxes.h12,
              Text(comment.comment),
              SizedBoxes.h16,
              SizedBox(
                height: 72,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBoxes.w12,
                  itemCount: comment.commentImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final commentImages = comment.commentImages[index];
                    return SizedBox(
                      width: 72,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(6),
                            color: AppColors.neutralLight),
                        child: Image.network(commentImages.image),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
