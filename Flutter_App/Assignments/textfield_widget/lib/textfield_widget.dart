import 'package:flutter/material.dart';
class TextFieldWidget1 extends StatefulWidget{
  @override 
  State<TextFieldWidget1> createState() => _TextFieldWidget1();
}


class _TextFieldWidget1 extends State<TextFieldWidget1> {

  TextEditingController nameController = TextEditingController();

  String? myName;
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 30,
                ),
                obscureText: isShow ? false : true,
                decoration: InputDecoration(
                  suffixIcon:  GestureDetector(
                    onTap: () {
                      isShow ? isShow = false : isShow =true;
                      setState((){});
                    },
                    child: Icon(
                      isShow ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  hintText: "Enter Name",
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val) {
                  print("Value: $val");
                },
                onEditingComplete: () {
                  print("Editing Completed");
                },
                onSubmitted: (value) {
                  print("Value Submitted: $value");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add data");
                myName = nameController.text;
                print("My Name: $myName");
                nameController.clear();
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Name: $myName",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
  }
}