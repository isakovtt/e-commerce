import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu/data/constants/endpoints.dart';
import 'package:lafyuu/data/models/categories_response.dart';

class CategoriesService {
  Future<List<CategoriesResponse>?> getCategories() async {
    final Uri uri = Uri.parse(Endpoints.categories);
    final Response response = await get(uri);

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result = data.map((e) => CategoriesResponse.fromJson(e)).toList();
      return result;
    }
    throw Exception();
  }
}
