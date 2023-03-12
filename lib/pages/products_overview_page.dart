import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_item.dart';

import '../model/product.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewPage extends StatelessWidget {
  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_sharp),
            onPressed: () {},
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
