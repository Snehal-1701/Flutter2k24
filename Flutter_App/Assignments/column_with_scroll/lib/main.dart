import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJPh6Vnmf-2FutCPCqnRBzPpUSuxWvOllskA&s",
                  width: 200,
                  height: 200,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_MRNY5Zzpav0xKp_fcXDhlvSV_8Gz2k8Yeg&s",
                  width: 200,
                  height: 200,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9dLi5Eiyv1eWJmMl6WUU3DigtK7i_zysn7w&s",
                  width: 200,
                  height: 200,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
