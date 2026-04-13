import 'package:her_garden/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  final void Function(Product) onAddToCart;

  const ProductDetailPage({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                product.imageUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                product.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                '₱${product.price}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  onAddToCart(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${product.name} added to cart!')),
                  );
                },
                child: const Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
