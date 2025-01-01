import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:studentinfo/add_stud_data.dart';

void main() async {
  log("In main");
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyBKWmphOiPn-k_cxl6A4xcKxlhl-OKA82Y",
  //         appId: "1:423481053657:android:cb6dfdd8022e4a3b15c9c8",
  //         messagingSenderId: "423481053657",
  //         projectId: "student-info-1"));
   try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBKWmphOiPn-k_cxl6A4xcKxlhl-OKA82Y",
        appId: "1:423481053657:android:cb6dfdd8022e4a3b15c9c8",
        messagingSenderId: "423481053657",
        projectId: "student-info-1",
      ),
    );
  } catch (e) {
    log("Firebase initialization error: $e");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddStudData(),
    );
  }
}
