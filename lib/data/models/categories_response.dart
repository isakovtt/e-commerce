class CategoriesResponse {
  final int id;
  final String name;

  CategoriesResponse({
     required this.id,
     required this.name,
  });

  CategoriesResponse copyWith({
    int? id,
    String? name,
  }) =>
      CategoriesResponse(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      CategoriesResponse(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
