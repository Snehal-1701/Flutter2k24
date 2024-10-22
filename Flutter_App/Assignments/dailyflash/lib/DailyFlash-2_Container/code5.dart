import 'package:flutter/material.dart';

class DailyFlashCode5 extends StatefulWidget {
  const DailyFlashCode5({super.key});
  @override
  State<DailyFlashCode5> createState() => _DailyFlashCode5State();
}

class _DailyFlashCode5State extends State<DailyFlashCode5> {
  bool clickMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            clickMe ? clickMe = false: clickMe=true;
            setState(() {});
          },
          child: Container(
            height: 300,
            width: 300,
            alignment: Alignment.center,
            color: clickMe ? Colors.blue : Colors.red,
            child: clickMe
                ? const Text("Container Tapped")
                : const Text("ClickMe"),
          ),
        ),
      ),
    );
  }
}
