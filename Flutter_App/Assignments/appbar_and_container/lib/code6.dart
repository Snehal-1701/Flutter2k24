import 'package:flutter/material.dart';

class ContainerDemo2 extends StatelessWidget {
  const ContainerDemo2({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text(
          "Scrollable Column",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 247, 225, 232),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 248, 178, 201),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 235, 92, 140),
            ),
              Container(
            height: 150,
            width: 150,
            color: const Color.fromARGB(255, 97, 253, 201),
          ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 213, 241, 121),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 145, 224, 253),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 147, 242, 140),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 49, 238, 65),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 122, 144, 244),
            ),
             Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 247, 126, 237),
            ),
          ],
        ),
      ),
    );
  }
}