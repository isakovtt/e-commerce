class RegisterResponse {
  final String? token;
  final int? id;
  final String? fullName;
  final String? email;

  RegisterResponse({
    this.token,
    this.id,
    this.fullName,
    this.email,
  });

  RegisterResponse copyWith({
    String? token,
    int? id,
    String? fullName,
    String? email,
  }) =>
      RegisterResponse(
        token: token ?? this.token,
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
      );

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
        token: json["token"],
        id: json["id"],
        fullName: json["full_name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "full_name": fullName,
        "email": email,
      };
}
