import 'package:flutter/material.dart';
import 'package:iplteams/get_teams_data.dart';

class IPLTeams extends StatefulWidget {
  const IPLTeams({super.key});

  @override
  State<IPLTeams> createState() => _IPLTeamsState();
}

class _IPLTeamsState extends State<IPLTeams> {

  TextEditingController nameController = TextEditingController();
  TextEditingController jerNoController = TextEditingController();
  TextEditingController teamNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TPL Team"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child:Image.network("https://cdn-icons-png.flaticon.com/512/1193/1193274.png"),
                ),
              ),

              const SizedBox(height:10),

              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Enter Player Name",
                  hintStyle: TextStyle(
                    fontSize: 17
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height:15),
          
              TextField(
                controller: jerNoController,
                decoration: const InputDecoration(
                  hintText: "Enter Jersey No",
                  hintStyle: TextStyle(
                    fontSize: 17
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height:15),
          
              TextField(
                controller: teamNameController,
                decoration: const InputDecoration(
                  hintText: "Enter Player's Team Name",
                  hintStyle: TextStyle(
                    fontSize: 17
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height:25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      
                    }, 
                    child: const Text("Add Player")
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllTeams()));
                    }, 
                    child: const Text("Get Data")
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}