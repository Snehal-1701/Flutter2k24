import 'package:flutter/material.dart';
import 'textfield_widget.dart';
import 'playerlist.dart';
import 'aspect_ratio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: TextFieldWidget1(),
      // home: PlayerList(),
      home: AspectRatio1(),
    );
  }
}