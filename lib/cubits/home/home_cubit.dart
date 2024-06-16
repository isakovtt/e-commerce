import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/data/models/categories_response.dart';
import 'package:lafyuu/data/models/flash_products_response.dart';
import 'package:lafyuu/data/models/mega_products_response.dart';
import 'package:lafyuu/data/models/recommended_products_response.dart';
import 'package:lafyuu/data/services/categories_service.dart';
import 'package:lafyuu/data/services/flash_products_service.dart';
import 'package:lafyuu/data/services/mega_products_service.dart';
import 'package:lafyuu/data/services/recommended_service.dart';
import 'package:lafyuu/utils/service_locator.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final categoriesService = getIt.get<CategoriesService>();
  final flashProductsService = getIt.get<FlashProductsService>();
  final megaProductService = getIt.get<MegaProductsService>();
  final recommendedProductService = getIt.get<RecommendedProductsService>();

  List<CategoriesResponse>? categories;
  List<FlashProductsResponse>? flashProducts;
  List<MegaProductsResponse>? megaProducts;
  List<RecommendedProductsResponse>? recommendedProducts;

  Future<void> getProductsDatas() async {
    try {
      emit(HomeLoading());
      categories = await categoriesService.getCategories();
      flashProducts = await flashProductsService.getFlashProducts();
      megaProducts = await megaProductService.getMegaProducts();
      recommendedProducts =
          await recommendedProductService.getRecommendedProducts();
      emit(HomeSuccess(
        categories: categories!,
        flashProducts: flashProducts!,
        megaProducts: megaProducts!,
        recommendedProducts: recommendedProducts!,
      ));
    } catch (e) {
      emit(HomeError());
    }
  }
}
