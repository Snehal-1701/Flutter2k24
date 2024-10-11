import 'package:flutter/material.dart';
import 'screen1.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title : Text(
            "Info",
            style: GoogleFonts.quicksand(
              fontSize : 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 150, 68, 188),
        ),
        body: MyScreen(),
      ),
    );
  }
}
