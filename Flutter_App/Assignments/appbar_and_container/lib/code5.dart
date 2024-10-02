import 'package:flutter/material.dart';

class ContainerDemo1 extends StatelessWidget {
  const ContainerDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image Demo",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: const Color.fromARGB(255, 177, 219, 254),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjXjOg8R3PRz_lQrz04nyydbxxfq9buPeOLQ&s",
              height: 150,
              width: 150,
            ),
            Image.network(
              "https://cdna.artstation.com/p/assets/images/images/043/853/940/large/can-s-drawings-twitterpost.jpg?1638432327",
              height: 150,
              width: 150,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwYsG1wGJArvqYSePXsLY7Ysaz3FZlpFOpIg&s",
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
