import 'package:flutter/material.dart';
import 'package:iplteams/add_player_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(),
  Firebase.initi
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IPLTeams(),
    );
  }
}
