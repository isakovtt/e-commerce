class DetailProductResponse {
  final int id;
  final int parentId;
  final String name;
  final String brand;
  final String category;
  final String description;
  final int stock;
  final String price;
  final int discount;
  final double discountedPrice;
  final int color;
  final int size;
  final dynamic rating;
  final int reviewCount;
  final List<Available> availableSizes;
  final List<Available> availableColors;
  final List<ProductImage> images;

  DetailProductResponse({
    required this.id,
    required this.parentId,
    required this.name,
    required this.brand,
    required this.category,
    required this.description,
    required this.stock,
    required this.price,
    required this.discount,
    required this.discountedPrice,
    required this.color,
    required this.size,
    required this.rating,
    required this.reviewCount,
    required this.availableSizes,
    required this.availableColors,
    required this.images,
  });

  factory DetailProductResponse.fromJson(Map<String, dynamic> json) =>
      DetailProductResponse(
        id: json["id"],
        parentId: json["parent_id"],
        name: json["name"],
        brand: json["brand"],
        category: json["category"],
        description: json["description"],
        stock: json["stock"],
        price: json["price"],
        discount: json["discount"],
        discountedPrice: json["discounted_price"].toDouble(),
        color: json["color"],
        size: json["size"],
        rating: json["rating"],
        reviewCount: json["review_count"],
        availableSizes: List<Available>.from(
            json["available_sizes"].map((x) => Available.fromJson(x))),
        availableColors: List<Available>.from(
            json["available_colors"].map((x) => Available.fromJson(x))),
        images: List<ProductImage>.from(json["images"].map((x) => ProductImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "parent_id": parentId,
        "name": name,
        "brand": brand,
        "category": category,
        "description": description,
        "stock": stock,
        "price": price,
        "discount": discount,
        "discounted_price": discountedPrice,
        "color": color,
        "size": size,
        "rating": rating,
        "review_count": reviewCount,
        "available_sizes":
            List<dynamic>.from(availableSizes.map((x) => x.toJson())),
        "available_colors":
            List<dynamic>.from(availableColors.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
      };
}

class Available {
  final int id;
  final String name;

  Available({
    required this.id,
    required this.name,
  });

  factory Available.fromJson(Map<String, dynamic> json) => Available(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class ProductImage {
  final int id;
  final String image;

  ProductImage({
    required this.id,
    required this.image,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
