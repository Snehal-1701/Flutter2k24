import 'package:flutter/material.dart';
import 'practice_screen1.dart';
import 'cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ShoeScreen(),
      home: MyCart(),
    );
  }
}
