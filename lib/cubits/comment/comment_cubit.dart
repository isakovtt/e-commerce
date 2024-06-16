import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/data/models/comment_product_response.dart';
import 'package:lafyuu/data/services/comment_service.dart';
import 'package:lafyuu/utils/service_locator.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  CommentCubit() : super(CommentInitial());

  final commentService = getIt.get<CommentService>();

  Future<void> getComment(int id) async {
    try {
      emit(CommentLoading());
      final commentResponse = await commentService.getComment(id);
      emit(CommentSuccess(commentResponse: commentResponse));
    } catch (e) {
      emit(CommentError());
    }
  }
}
