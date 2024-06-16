import 'package:hive_flutter/hive_flutter.dart';

part 'login_response.g.dart';

@HiveType(typeId: 1)
class LoginResponse {
  @HiveField(0)
  final String? email;
  @HiveField(1)
  final String? password;

  LoginResponse({
    this.email,
    this.password,
  });

  LoginResponse copyWith({
    String? email,
    String? password,
  }) =>
      LoginResponse(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };

  // void cast() {}
}
