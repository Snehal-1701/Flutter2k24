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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(
                //   width: 70,
                // ),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 13,
                      width: 13,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      color: Colors.black,
                    ),
                    Container(
                      height: 500,
                      width: 10,
                      color: Colors.black,
                    ),
                  ],
                ),
                Column(
                  children: [
                    // const SizedBox(
                    //   height: 60,
                    // ),
                    Container(
                      width: 250,
                      height: 80,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 250,
                      height: 80,
                      color: Colors.white,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/300px-Ashoka_Chakra.svg.png"),
                    ),
                    Container(
                      width: 250,
                      height: 80,
                      color: Colors.green,
                    ),
                  ],
                ),
                
              ],
            ),
            Column(
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    color: Colors.brown,
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    color: Colors.brown,
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    color: Colors.brown,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
