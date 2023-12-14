// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset(
                'lib/images/nike_logo.png',
              height: 240,
            ),
            const SizedBox(height: 48),
            Text(
                'Just Do It',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),



            const SizedBox(height: 24,),
            Text(
                'Brand new sneakers and custom kicks with the best quality',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),


            const SizedBox(height: 24,),

            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(25),
                child: Center(
                    child: Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  )
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
