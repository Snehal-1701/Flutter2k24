import 'package:flutter/material.dart';

class AppBarDemo3 extends StatelessWidget  {
  const AppBarDemo3({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2web",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}