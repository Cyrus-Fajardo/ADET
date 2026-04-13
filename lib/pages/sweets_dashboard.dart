import 'package:her_garden/models/cart_list_item.dart';
import 'package:her_garden/models/product.dart';
import 'package:her_garden/pages/about_page.dart';
import 'package:her_garden/pages/product_page.dart';
import 'package:her_garden/widgets/cart_button.dart';
import 'package:flutter/material.dart';

class SweetsDashboard extends StatefulWidget {
  const SweetsDashboard({super.key});

  @override
  State<SweetsDashboard> createState() => _SweetsDashboardState();
}

class _SweetsDashboardState extends State<SweetsDashboard> {
  final Map<String, CartListItem> cartItemsMap = {};

  void addToCart(Product item) {
    if (cartItemsMap.containsKey(item.id)) {
      cartItemsMap[item.id] = CartListItem(
        product: item,
        quantity: cartItemsMap[item.id]!.quantity + 1,
      );
    } else {
      cartItemsMap[item.id] = CartListItem(product: item, quantity: 1);
    }
    final totalCost = cartItemsMap.values.fold<double>(0, (prev, element) {
      return prev + element.product.price * element.quantity;
    });
    debugPrint('Cart total: ₱${totalCost.toStringAsFixed(2)}');
    setState(() {});
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${item.name} added to cart!')));
  }

  void showCheckoutSummary() {
    final totalCost = cartItemsMap.values.fold<double>(0, (prev, element) {
      return prev + element.product.price * element.quantity;
    });

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Checkout Summary',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              if (cartItemsMap.isEmpty)
                const Text('Your cart is empty.')
              else
                Column(
                  children: cartItemsMap.values
                      .map(
                        (entry) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  '${entry.product.name} x${entry.quantity}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              Text(
                                '₱${(entry.product.price * entry.quantity).toStringAsFixed(2)}',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              const SizedBox(height: 16),
              Text(
                'Total: ₱${totalCost.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: cartItemsMap.isEmpty
                    ? null
                    : () => Navigator.pop(context),
                child: const Text('Checkout'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalCount = cartItemsMap.values.fold<int>(0, (prev, element) {
      return prev + element.quantity;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Her Garden'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          ProductPage(onAddToCart: addToCart),
          Positioned(
            right: 16,
            bottom: 16,
            child: CartButton(
              count: totalCount,
              onPressed: showCheckoutSummary,
            ),
          ),
        ],
      ),
    );
  }
}
