import 'dart:convert';

import 'package:http/http.dart';

import '../constants/endpoints.dart';
import '../models/comment_product_response.dart';

class CommentService {
  Future<List<CommentProductResponse>> getComment(int id) async {
    final Uri uri = Uri.parse('${Endpoints.comment}/$id');
    final Response response = await get(uri);

    if (response.statusCode == 200) {
      final List  data = jsonDecode(response.body);
      // final data = CommentProductResponse.fromJson(jsonDecode(response.body));
       final result =
          data.map((e) => CommentProductResponse.fromJson(e)).toList();

      return result;
    }
    throw Exception('comment service error');
  }
}
