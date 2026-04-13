import 'package:fajardo_sweets/models/product.dart';
import 'package:fajardo_sweets/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

class ProductItemListView extends StatelessWidget {
  const ProductItemListView({
    super.key,
    required this.item,
    });
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 72,
                height: 72,
                child: Image.asset(item.imageUrl, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child:Text(
                        item.description,
                        style: const TextStyle(fontSize: 14),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('₱${item.price}',style: const TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: item),
                    ),
                  );
                },
                child: Icon(
                  Icons.add,
                  size: 24,
                  color:Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}