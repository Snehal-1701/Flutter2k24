import 'package:flutter/material.dart';

class DailyFlashCode3 extends StatelessWidget {
  const DailyFlashCode3 ({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
            border: Border.all(
              color: const Color.fromARGB(255, 76, 8, 88),
            ),
            color: const Color.fromARGB(255, 244, 200, 251),
          ),
        ),
      ),
    );
  }
}