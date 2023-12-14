import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //List of shoes for sale
  List<Shoe> shoeShop=[
    Shoe(
        name:"Air Jordan-1" ,
        price: "30000Rs",
        imagePath: "lib/images/jordan-1.jpg",
        description: "Get the best quality of Jordan-1"
    ),
    Shoe(
        name:"Air Jordan-2" ,
        price: "40000Rs",
        imagePath: "lib/images/jordan-2.jpg",
        description: "Get the best quality of Jordan-2"
    ),
    Shoe(
        name:"Air Jordan-3" ,
        price: "50000Rs",
        imagePath: "lib/images/jordan-7.png",
        description: "Get the best quality of Jordan-3"
    ),
    Shoe(
        name:"Air Jordan-4" ,
        price: "60000Rs",
        imagePath: "lib/images/jordan-5.png",
        description: "Get the best quality of Jordan-2"
    ),
    Shoe(
        name:"Air Jordan-5" ,
        price: "60000Rs",
        imagePath: "lib/images/jordan-6.png",
        description: "Get the best quality of Jordan-2"
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart=[];
  //get list in user cart
  List<Shoe> getShoeList(){
    return shoeShop;
  }
    //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add items to cart
  void addItemToCart(Shoe shoe){
      userCart.add(shoe);
  }
    //remove item from cart
  void removeItemFromCart(Shoe shoe){
      userCart.remove(shoe);
  }
}