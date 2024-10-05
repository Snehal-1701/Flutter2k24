import 'package:flutter/material.dart';

class AspectRatio1 extends StatefulWidget {
  const AspectRatio1({super.key});


  @override 
  State<AspectRatio1> createState() => _AspectRatio1();
}

class _AspectRatio1 extends State<AspectRatio1> {
  TextEditingController nameController = TextEditingController();

  String? myName;
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body :Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network("https://static-cse.canva.com/blob/1625993/ComposeStunningImages6.jpg"),
          ),
        ),
    );
  }
}