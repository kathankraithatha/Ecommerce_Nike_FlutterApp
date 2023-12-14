// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_flutter_app/pages/models/shoe.dart';
import 'package:flutter/material.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:Image.asset(shoe.imagePath)
             ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(shoe.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text(shoe.price,style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)
                    )
                    ),
                  child: Icon(Icons.add, color: Colors.white,)
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
