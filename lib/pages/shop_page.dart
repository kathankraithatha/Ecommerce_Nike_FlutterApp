// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_flutter_app/pages/models/cart.dart';
import 'package:ecommerce_flutter_app/pages/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Successfully added 🎊"),
          content: Text("Check Your Cart"),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer <Cart>(builder: (context, value, child) => Column(
      children: [
        //Search Bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('search',style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,)
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Text(
            "Everyone flies...some fly longer than others",
            style: TextStyle(color: Colors.grey[750]),
          ),
        ),



        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26
                ),
              ),
              Text(
                "See all",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),

        Expanded(
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index){
                  Shoe shoe=value.getShoeList()[index];
                  return ShoeTile(
                    onTap: () => addShoeToCart(shoe),
                      shoe: shoe
                  );

                }
            )
        ),
        const Padding(
          padding:  EdgeInsets.only(top:20.0, left: 20, right: 20.0),
          child: Divider(
            color: Colors.white,
          ),
        )

      ],

    )
    );
  }
}
