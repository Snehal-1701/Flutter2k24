import 'package:flutter/material.dart';
import 'package:iplteams/show_players.dart';

class AllTeams extends StatefulWidget {
  const AllTeams({super.key});

  @override
  State<AllTeams> createState() => _AllTeamsState();
}

class _AllTeamsState extends State<AllTeams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Teams"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>ShowAllPlayers())
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text("Team $index : teams"),
            ),
          );
        },
      )
    );
  }
}