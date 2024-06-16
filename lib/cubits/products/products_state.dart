part of 'products_cubit.dart';

abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsSuccess extends ProductsState {
  ProductsSuccess({required this.response});
  final List<ProductsResponse> response;
}

class ProductsError extends ProductsState {}

class ProductsNetworkError extends ProductsState {}
