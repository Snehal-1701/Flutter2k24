import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:studentinfo/get_stud_data.dart';

class AddStudData extends StatefulWidget {
  const AddStudData({super.key});

  @override
  State createState() => _AddStudDataState();
}

class _AddStudDataState extends State<AddStudData> {
  TextEditingController nameController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController courseController = TextEditingController();

  Map<String, dynamic> courseData = {};
  bool isOffline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("C2W Student"),
          centerTitle: true,
          backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter Your Name"),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: collegeController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter College Name"),
              ),
              const SizedBox(height: 15),
              Expanded(
                  flex: 0,
                  child: Text("courses: $courseData",
                      style: const TextStyle(
                        fontSize: 20,
                      ))),
              const SizedBox(height: 15),
              TextField(
                controller: courseController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enrolled courses"),
              ),
              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(
                  onPressed: () {
                    isOffline = true;
                    setState(() {});
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          isOffline ? Colors.blue : Colors.grey)),
                  child: const Text(
                    "Offline",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    isOffline = false;
                    setState(() {});
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          !isOffline ? Colors.blue : Colors.grey)),
                  child: const Text(
                    "Online",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
              const SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      if (courseController.text.trim().isNotEmpty) {
                        String mode = isOffline ? "Offline" : "Online";
                        courseData[courseController.text] = mode;
                      }
                      log("Map : $courseData");
                      courseController.clear();
                      isOffline = true;
                      setState(() {});
                    },
                    child: const Text("Add Course",
                        style: TextStyle(color: Colors.blue))),
              ),
              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(
                    onPressed: () async {
                      if (nameController.text.trim().isNotEmpty &&
                          collegeController.text.trim().isNotEmpty &&
                          courseData.isNotEmpty) {
                        Map<String, dynamic> data = {
                          "studName": nameController.text,
                          "collegeName": collegeController.text,
                          "enrolledCourses": courseData
                        };
                        log("Map 2 : $data");
                        await FirebaseFirestore.instance
                            .collection("C2WStudInfo")
                            .add(data);
                        nameController.clear();
                        collegeController.clear();
                        courseData.clear();
                        setState(() {});
                      }
                    },
                    child: const Text("Add Data",
                        style: TextStyle(color: Colors.blue))),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const GetStudData()),
                      );
                    },
                    child: const Text("Get Data",
                        style: TextStyle(color: Colors.blue))),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
