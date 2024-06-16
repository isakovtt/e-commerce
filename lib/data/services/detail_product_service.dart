import 'dart:convert';

import 'package:http/http.dart';

import '../constants/endpoints.dart';
import '../models/detail_product_response.dart';

class DetailProductService {
  Future<DetailProductResponse> getDetailProduct(int id) async {
    final Uri uri = Uri.parse('${Endpoints.detail}/$id');
    final Response response = await get(uri);

    if (response.statusCode == 200) {
      final data = DetailProductResponse.fromJson(jsonDecode(response.body));
    
      return data;
    }
    throw Exception('detail product service error');
  }
}
