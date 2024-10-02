import 'package:appbar_and_container/code5.dart';
import 'package:flutter/material.dart';
import 'code1.dart';
import 'code2.dart';
import 'code3.dart';
import 'code4.dart';
import 'code5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerDemo1(),
    );
  }
}
