import 'package:flutter/material.dart';

class DailyFlashCode1 extends StatelessWidget {
  const DailyFlashCode1 ({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.red,
            ),
          ),
          child: const Text(
            "Container",
          ),
        ),
      ),
    );
  }
}