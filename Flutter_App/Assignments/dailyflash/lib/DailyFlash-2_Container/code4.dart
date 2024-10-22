import 'package:flutter/material.dart';

class DailyFlashCode4 extends StatelessWidget {
  const DailyFlashCode4 ({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          padding: const EdgeInsets.only(left:20,top:10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            border: Border.all(
              color: const Color.fromARGB(255, 114, 3, 33),
            ),
            color: const Color.fromARGB(255, 251, 200, 209),
          ),
          child: const Text("Snehal"),
        ),
      ),
    );
  }
}