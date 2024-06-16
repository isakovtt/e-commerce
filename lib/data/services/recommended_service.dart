import 'dart:convert';

import 'package:http/http.dart';

import '../constants/endpoints.dart';
import '../models/recommended_products_response.dart';

class RecommendedProductsService {
  Future<List<RecommendedProductsResponse>?> getRecommendedProducts() async {
    final Uri uri = Uri.parse(Endpoints.recommended);
    final Response response = await get(uri);

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result =
          data.map((e) => RecommendedProductsResponse.fromJson(e)).toList();
      return result;
    }
    throw Exception();
  }
}
