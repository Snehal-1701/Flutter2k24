import "package:flutter/material.dart";

void main() {
  print("Incubators");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Core2web",
      home : TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override 
  Widget build(BuildContext conetxt) {
    return Scaffold(
      appBar : AppBar(
        title : Text("FirstApp"),
        backgroundColor : Colors.blue,
      ),
      body : Container(
        height : 200,
        width : 200,
        decoration : const BoxDecoration(
          color : Colors.amber,
          shape : BoxShape.circle,
        )
      )
    );
  }
}