part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<CategoriesResponse> categories;
  final List<FlashProductsResponse> flashProducts;
  final List<MegaProductsResponse> megaProducts;
  final List<RecommendedProductsResponse> recommendedProducts;

  HomeSuccess({
    required this.categories,
    required this.flashProducts,
    required this.megaProducts,
    required this.recommendedProducts,
  });
}

final class HomeError extends HomeState {}
