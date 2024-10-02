import 'package:flutter/material.dart';

class ContainerDemo3 extends StatelessWidget {
  const ContainerDemo3({super.key});

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-YIGV8GTRHiW_KACLMhhi9fEq2T5BDQcEyA&s",
              fit: BoxFit.cover,
              height: 300,
              width: 150,
            ),
            const SizedBox(
              width: 8,
            ),
            Image.network(
              "https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTk2ODE5MDM1MDk3MTQ3MDEw/amazing-cats-and-true-cat-stories.jpg",
              fit: BoxFit.cover,
              height: 300,
              width: 150,
            ),
            const SizedBox(
              width: 8,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWLKDjU-aU609DkVgq8XCEl09KyyWMlcWyKg&s",
              fit: BoxFit.cover,
              height: 300,
              width: 150,
            ),
            const SizedBox(
              width: 8,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT98hv4LEI09pVVxd2pRTnmGg_KJy4Rcx7sFA&s",
              fit: BoxFit.cover,
              height: 300,
              width: 150,
            ),
            const SizedBox(
              width: 8,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE2hw6WUB786jinPaPBNSoxr7xn8ck45CXbg&s",
              fit: BoxFit.cover,
              height: 300,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
