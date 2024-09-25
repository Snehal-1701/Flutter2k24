import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarColorApp());
}

class AppbarColorApp extends StatefulWidget {

  const AppbarColorApp({super.key});

  @override 
  State<AppbarColorApp> createState() => _AppbarColorAppState();
}

class _AppbarColorAppState extends State<AppbarColorApp> {

  bool changeColor = true;

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Color"),
          centerTitle: true,
          backgroundColor: changeColor ? Color.fromARGB(255, 96, 141, 177) : const Color.fromARGB(255, 28, 118, 191),
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            color: changeColor ?const Color.fromARGB(255, 28, 118, 191) : Color.fromARGB(255, 38, 83, 120),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeColor ? changeColor = false : changeColor = true;
            setState((){});
          },
          backgroundColor: Colors.blue,
          child: const Text("Toggle"),
        )
      ),
    );
  }
}