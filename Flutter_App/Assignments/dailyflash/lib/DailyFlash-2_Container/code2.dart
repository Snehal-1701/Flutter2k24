import 'package:flutter/material.dart';

class DailyFlashCode2 extends StatelessWidget {
  const DailyFlashCode2 ({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
              left:BorderSide(color: Colors.red,width:5),
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