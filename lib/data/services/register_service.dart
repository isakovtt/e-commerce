import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lafyuu/data/constants/endpoints.dart';
import 'package:lafyuu/data/models/register_response.dart';

class RegisterService {
  Future<RegisterResponse?> register({
    required String fullName,
    required String email,
    required String password,
  }) async {
    final Uri uri = Uri.parse(Endpoints.register);
    final body = {
      "full_name": fullName,
      "email": email,
      "password": password,
    };
    final http.Response response = await http.post(uri, body: body);
    if (response.statusCode>199 && response.statusCode<300) {
        final data  = jsonDecode(response.body);
        return RegisterResponse.fromJson(data);
    }
    return null;
  }
}












// {
//     "full_name": [
//         "This field is required."
//     ],
//     "email": [
//         "This field is required."
//     ],
//     "password": [
//         "This field is required."
//     ]
// }