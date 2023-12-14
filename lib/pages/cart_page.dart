// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_flutter_app/pages/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import 'models/shoe.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Text(
                  "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 10),
              Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserCart().length ,
                      itemBuilder: (context, index) {
                        Shoe individualShoe=value.getUserCart()[index];
                        return CartItem(shoe: individualShoe,);
                }
              )
              ),
            ],
          ),
        )
    );
  }
}
