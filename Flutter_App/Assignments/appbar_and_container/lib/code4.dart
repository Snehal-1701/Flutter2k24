import 'package:flutter/material.dart';

class AppBarDemo4 extends StatelessWidget  {
  const AppBarDemo4({super.key});

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
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}