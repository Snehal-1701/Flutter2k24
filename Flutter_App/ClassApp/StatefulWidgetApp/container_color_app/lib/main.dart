import "package:flutter/material.dart";

void main() {
  runApp(const ContainerApp());
}

class ContainerApp extends StatefulWidget  {

  const ContainerApp({super.key});

  @override 
  State<ContainerApp> createState() => _ContainerAppState();
}

class _ContainerAppState extends State<ContainerApp> {

  bool changeColor = true;

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ContainerColorApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            color: changeColor ? Color.fromARGB(255, 243, 20, 4) : Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeColor ? changeColor = false : changeColor = true;

            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Text("Toggle"),
        ),
      ),
    );
  }
}