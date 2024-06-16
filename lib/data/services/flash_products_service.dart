import 'dart:convert';

import 'package:http/http.dart';

import '../constants/endpoints.dart';
import '../models/flash_products_response.dart';

class FlashProductsService {
  Future<List<FlashProductsResponse>?> getFlashProducts() async {
    final Uri uri = Uri.parse(Endpoints.flash);
    final Response response = await get(uri);

    if (response.statusCode == 200 ) {
      final List data = jsonDecode(response.body);
      final result =
          data.map((e) => FlashProductsResponse.fromJson(e)).toList();
      return result;
    }
    throw Exception();
  }
}
