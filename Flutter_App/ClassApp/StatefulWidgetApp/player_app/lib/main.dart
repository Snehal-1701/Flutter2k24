import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override 
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {

  List player = [
    "https://attic.sh/0m9x8nz6b9is6u6tswnejl6364ty",
    "https://www.shutterstock.com/image-vector/indian-cricket-player-vector-illustration-600nw-2281460633.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWONTM4TrK5qRBZHU6es6J5gbVFDnICbfzPQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReUuzSskPaZkGSJ9IGzoR2Fr9SVAkvB2uNpw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHlYGq84QP3YSyeU8-TKBylnlzuo20fE3NDwXpxhgrAPisXQ-IZ5at4pPZcnbeGSB0AhU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk6dPvRY-xuJKrOpuG8sJ4wqkBAuGCKbT0IAOeJZ-SNJ-1-0drA-z32pgSOanvmQm8I1k&usqp=CAU",
  ];
  int index = 0;

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Player App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            height: 400,
            width: 400,
            child: Image.network(player[index]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(index < player.length-1) {
              index++;
            } else {
              index = 0;
            }

            setState((){});
          },
          backgroundColor: Colors.blue,
          child: const Text("Next"),
        ),
      ),
    );
  }
}