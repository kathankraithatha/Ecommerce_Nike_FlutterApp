// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_flutter_app/components/nav_bar.dart';
import 'package:ecommerce_flutter_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> _pages=[
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        )

      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(child: Image.asset(
              'lib/images/nike_logo.png',
              color: Colors.white,

            )),

            const Padding(
              padding:  EdgeInsets.only(top: 10,left: 24.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('home', style: TextStyle(color: Colors.white),),
              ),
            ),


            const Padding(
              padding:  EdgeInsets.only(top:10,left: 24.0),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text('About', style: TextStyle(color: Colors.white),),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(top:10,left: 24.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('Log Out', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
