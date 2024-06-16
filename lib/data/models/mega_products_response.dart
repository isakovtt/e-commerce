class MegaProductsResponse {
  final int id;
  final String name;
  final String image;
  final String price;
  final int discount;
  final double discountedPrice;
  final dynamic rating;
  final int reviewCount;

  MegaProductsResponse({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.discount,
    required this.discountedPrice,
    required this.rating,
    required this.reviewCount,
  });

  factory MegaProductsResponse.fromJson(Map<String, dynamic> json) =>
      MegaProductsResponse(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        discount: json["discount"],
        discountedPrice: json["discounted_price"].toDouble(),
        rating: json["rating"],
        reviewCount: json["review_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
        "discount": discount,
        "discounted_price": discountedPrice,
        "rating": rating,
        "review_count": reviewCount,
      };
}
