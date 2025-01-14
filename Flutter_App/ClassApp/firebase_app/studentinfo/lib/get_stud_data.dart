import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:studentinfo/add_stud_data.dart';

class GetStudData extends StatefulWidget {
  const GetStudData({super.key});

  @override
  State<GetStudData> createState() => _GetStudDataState();
}

class _GetStudDataState extends State<GetStudData> {
  List studData = [];

  @override
  void initState() {
    super.initState();
    getStudData();
  }

  void getStudData() async {
    QuerySnapshot response =
        await FirebaseFirestore.instance.collection("C2WStudInfo").get();
    log("Response : $response");
    studData = response.docs;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Show Data"),
            centerTitle: true,
            backgroundColor: Colors.blue),
        body: ListView.builder(
            itemCount: studData.length,
            itemBuilder: (context, index) {
              return Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>AddStudData(true, id:studData[index].id)), (Route route) => false);
                      },
                      child: const Icon(Icons.edit,size:35)
                    ),
                    const SizedBox(width:10),
                    GestureDetector(
                      onTap: (){
                        FirebaseFirestore.instance.collection("C2WStudInfo").doc(studData[index].id).delete();
                        log("Flie deleted successfully");
                        getStudData();
                        setState((){});
                      },
                      child: const Icon(Icons.delete,size:35)
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name : ${studData[index]['studName']}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Text("College Name : ${studData[index]['collegeName']}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Text(
                          "Enrolled Courses : ${studData[index]['enrolledCourses']}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Text(
                          "Id : ${studData[index].id}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            }));
  }
}

