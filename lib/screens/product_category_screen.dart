import 'package:flutter/material.dart';
import 'package:grocery_store/models/product_model.dart';
import 'package:grocery_store/widgets/card_widget.dart';

class ProductCategoryScreen extends StatelessWidget {
  const ProductCategoryScreen({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            child: products.where((product) => product.tag == title).isEmpty
                ? Center(child: Text('No products found'))
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: products
                        .where((product) => product.tag == title)
                        .length,
                    itemBuilder: (context, index) {
                      var product = products
                          .where((product) => product.tag == title)
                          .toList()[index];
                      return CardWidget(product: product);
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
