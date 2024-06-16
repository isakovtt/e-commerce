import 'package:flutter/material.dart';
import 'package:lafyuu/data/models/detail_product_response.dart';

class DetailProductImage extends StatelessWidget {
  const DetailProductImage(
      {super.key, required this.itemcount, required this.detailProduct});
  final int itemcount;
  final DetailProductResponse detailProduct;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemcount,
        itemBuilder: (context, index) {
          final detailImage = detailProduct.images[index].image;
          return Image.network(
            detailImage,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          );
        },
      ),
    );
  }
}
