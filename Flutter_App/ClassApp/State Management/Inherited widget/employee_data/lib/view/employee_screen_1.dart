import 'dart:developer';

import 'package:flutter/material.dart';

import '../controller/employee_controller.dart';
import 'employee_screen_2.dart';

class EmployeeScreen1 extends StatefulWidget {
  const EmployeeScreen1({super.key});

  @override
  State<EmployeeScreen1> createState() => _EmployeeScreen1State();
}

class _EmployeeScreen1State extends State<EmployeeScreen1> {
  @override
  Widget build(BuildContext context) {
    log("In EmployeeScreen 1 Build");

    // Employee retObj = context.dependOnInheritedWidgetOfExactType<Employee>()!;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Data"),
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // setState((){
          //   // Employee.of(context).empSal = 4.5;
          // });
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const EmployeeScreen2()));
        },
        child: const Text("Next"),
      ),
    );
  }
}
