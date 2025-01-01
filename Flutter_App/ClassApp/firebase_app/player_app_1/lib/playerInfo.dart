import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  TextEditingController empNameTextController = TextEditingController();
  TextEditingController empSalTextController = TextEditingController();
  TextEditingController devTypeTextController = TextEditingController();
  List<Map<String, dynamic>> empList = [];
  List<Map<String, dynamic>> maxSalEmpList = [];
  dynamic maxSal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player Info"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ///EMPLOYEE NAME
            TextField(
              controller: empNameTextController,
              decoration: InputDecoration(
                hintText: "Enter Employee Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            ///EMPLOYEE SALARY
            TextField(
              controller: empSalTextController,
              decoration: InputDecoration(
                hintText: "Enter Employee Salary",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            ///EMPLOYEE DEV TYPE
            TextField(
              controller: devTypeTextController,
              decoration: InputDecoration(
                hintText: "Enter Employee Dev Type",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                Map<String, dynamic> data = {
                  "empName": empNameTextController.text,
                  "empSal": empSalTextController.text,
                  "devType": devTypeTextController.text,
                };

                FirebaseFirestore.instance.collection("EmployeeData").add(data);
                log("Data Added Successfully");
                empNameTextController.clear();
                empSalTextController.clear();
                devTypeTextController.clear();
                setState(() {
                  
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 94, 179, 248),
                ),
                child: const Text("Add Data"),
              ),
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () async {
                 maxSalEmpList.clear();
                QuerySnapshot response = await FirebaseFirestore.instance
                    .collection("EmployeeData")
                    .get();

                log("Response : $response");
                for (dynamic val in response.docs) {
                  // log("Val : ${val.data()}");
                  empList.add(val.data());
                  // log("list : ${empList[0]['empSal']}");
                }
                log("list : $empList");
               
                showMaxSal(empList);
                setState(() {

                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 94, 179, 248),
                ),
                child: const Text("Get Data"),
              ),
            ),

            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: maxSalEmpList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 231, 142, 247)),
                      child: Column(
                        children: [
                          Text("Emp Name : ${maxSalEmpList[index]['empName']}"),
                          Text("Emp Sal : ${maxSalEmpList[index]['empSal']}"),
                          Text(
                              "Emp Dev Type : ${maxSalEmpList[index]['devType']}"),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  showMaxSal(List empList) {
    int len = empList.length;
    log("List length : $len");

    for (int i = 0; i < len; i++) {
      dynamic sal = num.parse(empList[i]['empSal']);
      log("Sal : $sal");
      if (sal > maxSal) {
        maxSal = sal;
      }
    }
    log("Max Sal : $maxSal");
      maxSalEmpList.clear();
    for (int i = 0; i < len; i++) {
    
      dynamic sal = num.parse(empList[i]['empSal']);
      log("Sal : $sal");
      if (sal == maxSal) {
        maxSalEmpList.add(empList[i]);
      }
    }
    log("LEngth : ${maxSalEmpList.length}");

  }

}
