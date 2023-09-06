import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(
              "images/splash_pic.jpg",
              fit: BoxFit.cover,
              height: MediaQuery.sizeOf(context).height * 1,
              width: MediaQuery.sizeOf(context).width * 1,
            ),
          ],
        ),
      ),
    );
  }
}
