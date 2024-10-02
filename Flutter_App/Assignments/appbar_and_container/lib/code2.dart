import 'package:flutter/material.dart';

class AppBarDemo2 extends StatelessWidget {
  const AppBarDemo2({super.key});

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