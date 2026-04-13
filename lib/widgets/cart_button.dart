import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key, required this.count, this.onPressed});
  final int count;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(10));
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 56,
        height: 56,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.teal[200],
          borderRadius: borderRadius,
        ),
        child: Stack(
          children: [
            const Center(child: Icon(Icons.shopping_cart_outlined, size: 32)),
            Positioned(
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.pink[500],
                  borderRadius: borderRadius,
                ),
                constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                child: Text(
                  '$count',
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
