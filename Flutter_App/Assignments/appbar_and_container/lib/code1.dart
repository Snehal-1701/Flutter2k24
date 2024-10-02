import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            size: 40,
            Icons.favorite,
          ),
          SizedBox(
            width:10,
          ),
          Icon(
            size: 40,
            Icons.notification_add,
          ),
          SizedBox(
            width:10,
          ),
        ],
        backgroundColor: Colors.blue,
      ),
    );
  }
}