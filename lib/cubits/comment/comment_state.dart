part of 'comment_cubit.dart';

@immutable
sealed class CommentState {}

final class CommentInitial extends CommentState {}

final class CommentLoading extends CommentState {}

final class CommentSuccess extends CommentState {
  final List<CommentProductResponse> commentResponse;
  
  CommentSuccess({required this.commentResponse});
  
}

final class CommentError extends CommentState {}
