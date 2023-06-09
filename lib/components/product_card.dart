import 'package:flutter/material.dart';
import 'package:paytonkawa/models/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class ProductTile extends StatelessWidget {
  ProductTile({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  final Product product;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Hero(
                tag: product.name!,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: 'https://elcafe.fr/wp-content/uploads/2022/01/delonghi-FEB-2961.SB-carre.jpg',
                    height: 130,
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(
                      color: Color(0xFF2c3e50),
                    )),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name!,
                    maxLines: 2,
                    style: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 22),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.stock,
                    style: const TextStyle(fontSize: 13, color: Colors.black54),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.createdAt,
                    style: const TextStyle(fontSize: 13, color: Colors.black54),
                    maxLines: 2,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}