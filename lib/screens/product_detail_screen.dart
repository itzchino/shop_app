import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
/*   final String title;
  final double price;

  ProductDetailScreen(this.title, this.price); */

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; //this is the id
    final loadedProduct = Provider.of<Products>(
      context,
      listen:
          false, //if you only want to get data one time and don't want to update
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 300,
                width: double.infinity,
                child:
                    Image.network(loadedProduct.imageUrl, fit: BoxFit.cover)),
            SizedBox(height: 10),
            Text(
              '\$${loadedProduct.price}',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
