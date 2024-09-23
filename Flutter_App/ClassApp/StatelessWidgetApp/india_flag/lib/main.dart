import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 600,
                width: 5,
                color: Colors.black,
              ),
              Column(
                
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: 280,
                    height: 100,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 280,
                    height: 100,
                    color: Colors.white,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/300px-Ashoka_Chakra.svg.png"),
                  ),
                  Container(
                    width: 280,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
