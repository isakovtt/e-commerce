// ignore_for_file: constant_identifier_names

// import 'package:hive_flutter/hive_flutter.dart';

// part 'products_response.g.dart';

// @HiveType(typeId: 1)
class ProductsResponse   {
  // @HiveField(0)
  int id;
  // @HiveField(1)
  String title;
  // @HiveField(2)
  double price;
  // @HiveField(3)
  String description;
  // @HiveField(4)
  Category category;
  // @HiveField(5)
  String image;
  // @HiveField(6)
  Rating rating;

  ProductsResponse({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      ProductsResponse(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: categoryValues.map[json["category"]]!,
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );
}

// @HiveType(typeId: 2)
enum Category {
  // @HiveField(0)
  ELECTRONICS,
  // @HiveField(1)
  JEWELERY,
  // @HiveField(2)
  MEN_S_CLOTHING,
  // @HiveField(3)
  WOMEN_S_CLOTHING,
}

final categoryValues = EnumValues({
  "electronics": Category.ELECTRONICS,
  "jewelery": Category.JEWELERY,
  "men's clothing": Category.MEN_S_CLOTHING,
  "women's clothing": Category.WOMEN_S_CLOTHING
});

// @HiveType(typeId: 3)
class Rating {
  // @HiveField(0)
  double rate;
  // @HiveField(1)
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
