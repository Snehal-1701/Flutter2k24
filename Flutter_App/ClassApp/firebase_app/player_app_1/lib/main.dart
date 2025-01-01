import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'playerInfo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCUXwIPKf9XZPkLnV07jBXz4HWiOmrrNGM",
          appId: "1:224974970586:android:a6b9dfb096d0cff40b4fe3",
          messagingSenderId: "224974970586",
          projectId: "player-info-1"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlayerApp(),
    );
  }
}
