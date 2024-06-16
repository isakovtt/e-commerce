import 'package:get_it/get_it.dart';
import 'package:lafyuu/data/services/categories_service.dart';
import 'package:lafyuu/data/services/comment_service.dart';
import 'package:lafyuu/data/services/detail_product_service.dart';
import 'package:lafyuu/data/services/flash_products_service.dart';
import 'package:lafyuu/data/services/recommended_service.dart';

import '../data/services/login_service.dart';
import '../data/services/mega_products_service.dart';
import '../data/services/register_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton(() => RegisterService());
  getIt.registerLazySingleton(() => LoginService());
  getIt.registerLazySingleton(() => CategoriesService());
  getIt.registerLazySingleton(() => FlashProductsService());
  getIt.registerLazySingleton(() => MegaProductsService());
  getIt.registerLazySingleton(() => RecommendedProductsService());
  getIt.registerLazySingleton(() => DetailProductService());
  getIt.registerLazySingleton(() => CommentService());
}
