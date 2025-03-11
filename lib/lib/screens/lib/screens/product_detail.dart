import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Map product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['title'])),
      body: Column(
        children: [
          Image.network(product['image']),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product['description']),
          ),
          Text("\$${product['price']}", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
