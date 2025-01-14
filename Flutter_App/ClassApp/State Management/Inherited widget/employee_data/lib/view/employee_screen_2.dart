import 'dart:developer';

import 'package:employee_data/controller/employee_controller.dart';
import 'package:flutter/material.dart';

class EmployeeScreen2 extends StatelessWidget {
  const EmployeeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    log("In EmployeeScreen 2 Build");

    // Employee retObj = context.dependOnInheritedWidgetOfExactType<Employee>()!;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Screen 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Employee Name : ${Employee.of(context).empName}",style: const TextStyle(fontSize: 25)),
              const SizedBox(height:15),
              Text("Employee Id : ${Employee.of(context).empId}",style: const TextStyle(fontSize: 25)),
              const SizedBox(height:15),
              Text("Employee Sal : ${Employee.of(context).empSal}",style: const TextStyle(fontSize: 25)),
              const SizedBox(height:15),
            ],
          ),
        )
      ),
    );
  }
}