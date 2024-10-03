import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override 
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&s"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
            GestureDetector(
              onTap: () {
                print("Button pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text("Press me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}