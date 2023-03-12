import 'package:flutter/material.dart';
import 'package:shop_app/pages/product_details_page.dart';
import '../model/product.dart';

class ProductItem extends StatelessWidget {
  ProductItem(
      {Key? key, required this.title, required this.id, required this.imageUrl})
      : super(key: key);

  final String title;
  final String id;
  final String imageUrl;

  void navigateToProductDetails(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductDetailsPage(
              title: title,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        //forces its child to a certain shape
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            leading: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.secondary,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {},
            ),
          ),
          child: GestureDetector(
            onTap: () {
              navigateToProductDetails(context);
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
