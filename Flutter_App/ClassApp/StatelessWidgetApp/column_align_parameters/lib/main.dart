import 'package:flutter/material.dart';
import "start_start.dart";
import "start_center.dart";
import "start_end.dart";

import 'center_start.dart';
import 'center_center.dart';
import 'center_end.dart';

import 'end_start.dart';
import 'end_center.dart';
import 'end_end.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Demo"),
          backgroundColor: Colors.blue,
        ),
        body: const Column9(),
      ),
    );
  }
}
