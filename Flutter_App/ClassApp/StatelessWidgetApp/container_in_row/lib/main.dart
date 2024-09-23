import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 148, 30, 148),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 60, 1, 60),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 148, 30, 148),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
