import 'dart:convert';

import 'package:lafyuu/data/constants/endpoints.dart';
import 'package:lafyuu/data/models/login_response.dart';

import 'package:http/http.dart' as http;

class LoginService {
  Future<LoginResponse?> login({
    required String email,
    required String password,
  }) async {
    final Uri uri = Uri.parse(Endpoints.login);

    final body = {
      "email": email,
      "password": password,
    };

    final http.Response response = await http.post(uri, body: body);

    if (response.statusCode > 199 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      return LoginResponse.fromJson(data);
    }

    return null;
  }
}
