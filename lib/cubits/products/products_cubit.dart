import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/products_response.dart';
import '../../data/services/product_service.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  // getData() {
  //   final Box<List> box = Hive.box('productsBox');
  //   final datas = [];
  //   box.values.forEach((element) {
  //     datas.add(element);
  //   });
  //   print(datas.runtimeType);
  // }

  final ProductService _service = ProductService();
  final List<ProductsResponse> products = [];

  void getProducts() async {
    try {
      emit(ProductsLoading());
      List<ProductsResponse>? result = await _service.getProducts();
      if (result is List<ProductsResponse>) {
        
        // for (var r in result) {
        //   ProductsResponse productsResponse = ProductsResponse(
        //       id: r.id,
        //       category: r.category,
        //       description: r.description,
        //       image: r.image,
        //       price: r.price,
        //       rating: r.rating,
        //       title: r.title);
        //   products.add(productsResponse);
        //   final Box<List<ProductsResponse>> box = Hive.box('productsBox');

        //   box.put('productsBox', products);
        // }
      
        // final Box<List<ProductsResponse>> box = Hive.box('productsBox');
        // await box.put('productsBox', products);
        //  await box.putAll(Map.fromEntries(products.map((e) => MapEntry(e.id, e as List<ProductsResponse>))));
        // print(products.toList());
      
        emit(ProductsSuccess(response: result));
      } else {
        emit(ProductsError());
      }
    } catch (e) {
      emit(ProductsError());
    }
  }
}
