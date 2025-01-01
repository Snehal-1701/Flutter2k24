import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetStudData extends StatefulWidget {
  const GetStudData({super.key});

  @override
  State<GetStudData> createState() => _GetStudDataState();
}

class _GetStudDataState extends State<GetStudData> {

  // @override
  // void initState() {
  //   super.initState();
  //   getStudData();
  // }

  void getStudData() async{
    QuerySnapshot response = await FirebaseFirestore.instance.collection("C2WStudInfo").get();
    log("Response : $response");
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: const Text("Show Data"),
          centerTitle: true,
          backgroundColor: Colors.blue),
          body: ListView.builder(itemBuilder: (context, index) {
            return Container(

            );
          })
    );
  }
}