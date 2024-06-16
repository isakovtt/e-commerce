import 'dart:convert';

import 'package:http/http.dart';

import '../constants/endpoints.dart';
import '../models/mega_products_response.dart';

class MegaProductsService {
  Future<List<MegaProductsResponse>?> getMegaProducts() async {
    final Uri uri = Uri.parse(Endpoints.mega);
    final Response response = await get(uri);

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result =
          data.map((e) => MegaProductsResponse.fromJson(e)).toList();
      return result;
    }
    throw Exception();
  }
}
