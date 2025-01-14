import 'dart:developer';

import 'package:flutter/material.dart';

import 'controller/employee_controller.dart';
import 'view/employee_screen_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  final String empName = "Snehal";
  final int empId = 210;
  final double empSal = 3.5;

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MainApp Build");
    return Employee(
      empName: empName,
      empId: empId,
      empSal: empSal,
      child: const MaterialApp(
        home: EmployeeScreen1(),
      ),
    );
  }
}
