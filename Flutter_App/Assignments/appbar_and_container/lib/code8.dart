import 'package:flutter/material.dart';

class ContainerDemo4 extends StatelessWidget  {
  const ContainerDemo4({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2web",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 192, 234, 250), 
                
                border:  Border.all(
                  color: Colors.red,
                  width: 5,
                ),
              ),
              width: 300,
              height: 300,
              
            ),
          ],
        ),
      ),
    );
  }
}