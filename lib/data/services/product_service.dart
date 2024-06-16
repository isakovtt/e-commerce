import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu/data/constants/endpoints.dart';
import 'package:lafyuu/data/models/products_response.dart';

//FAKESTORE PRODUCTS

class ProductService {
  Future<List<ProductsResponse>?> getProducts() async {
    final Uri uri = Uri.parse(Endpoints.products);
    final Response response = await get(uri);
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result = data.map((e) => ProductsResponse.fromJson(e)).toList();
      return result;
    }
    return null;
  }
}
