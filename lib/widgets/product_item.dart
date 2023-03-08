import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductItem extends StatelessWidget {
  ProductItem({Key? key, required this.item}) : super(key: key);

  Product item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            item.title,
            textAlign: TextAlign.center,
          ),
          leading: const Icon(Icons.favorite),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
        child: Image.network(
          item.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
