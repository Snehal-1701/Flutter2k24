import 'package:flutter/material.dart';

class ShowAllPlayers extends StatefulWidget {
  const ShowAllPlayers({super.key});

  @override
  State<ShowAllPlayers> createState() => _ShowAllPlayersState();
}

class _ShowAllPlayersState extends State<ShowAllPlayers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team Name"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                Text("Player Name : "),
                SizedBox(height:5),
                Text("Jersey No. : "),
                SizedBox(height:5),
              ],
            ),
          );
        }
      )
    );
  }
}