part of 'detail_cubit.dart';

@immutable
sealed class DetailState {}

final class DetailInitial extends DetailState {}

final class DetailLoading extends DetailState {}

final class DetailSuccess extends DetailState {
  
  final DetailProductResponse detailProduct;
  DetailSuccess({required this.detailProduct});
}

final class DetailError extends DetailState {}
