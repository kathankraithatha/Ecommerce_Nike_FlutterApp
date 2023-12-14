import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/models/cart.dart';
import '../pages/models/shoe.dart';
class CartItem extends StatefulWidget {
    final Shoe shoe;
   const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        void removeItemFromCart() {
          cart.removeItemFromCart(widget.shoe);
        }
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
         ),
          ),
        );
      },
    );
  }
}
