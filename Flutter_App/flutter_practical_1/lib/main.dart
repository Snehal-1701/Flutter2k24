import "package:flutter/material.dart";

void main() {
  print("Incubators");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      title : "Core2web",
      home : Test1App(),
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


class Test1App extends StatelessWidget {
  const Test1App({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("SecondApp"),
        backgroundColor : Colors.blue,
      ),
      body : SingleChildScrollView(
        scrollDirection : Axis.horizontal,
        child : Row(
        children : [
          Container(
            height : 200,
            width : 200,
            decoration : const BoxDecoration(
              color : Colors.amber,
              shape : BoxShape.circle,
            )
          ),
                    Container(
            height : 200,
            width : 200,
            decoration : const BoxDecoration(
              color : Colors.amber,
              shape : BoxShape.circle,
            )
          ),
                    Container(
            height : 200,
            width : 200,
            decoration : const BoxDecoration(
              color : Colors.amber,
              shape : BoxShape.circle,
            )
          )
        ]
      ),
      ),
    );
  }
}