import 'package:flutter/material.dart';
import 'DailyFlash-2_Container/code1.dart';
import 'DailyFlash-2_Container/code2.dart';
import 'DailyFlash-2_Container/code3.dart';
import 'DailyFlash-2_Container/code4.dart';
import 'DailyFlash-2_Container/code5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: DailyFlashCode1(),
      // home: DailyFlashCode2(),
      // home: DailyFlashCode3(),
      // home: DailyFlashCode4(),
      home: DailyFlashCode5(),
    );
  }
}
