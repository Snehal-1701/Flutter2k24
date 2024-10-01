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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width:120),
                Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
              ],
            ),
            
            Row(
              children: [
                const SizedBox(width:124),
                Container(
                      height: 5,
                      width: 5,
                      color: Colors.black,
                    ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 60,),

                
                Container(
                  height: 450,
                  width: 10,
                  color: Colors.black,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.white,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/300px-Ashoka_Chakra.svg.png"),
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
            
            Row(
              children: [
                const SizedBox(width:75),
                Container(
                  width: 100,
                  height: 20,
                  color: Colors.brown,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width:50),
                Container(
                  width: 150,
                  height: 20,
                  color: Colors.brown,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width:25),
                Container(
                  width: 200,
                  height: 20,
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
