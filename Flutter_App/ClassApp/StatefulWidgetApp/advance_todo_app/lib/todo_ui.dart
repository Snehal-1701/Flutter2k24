import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'todo_model.dart';

class TodoUI extends StatefulWidget {
  const TodoUI({super.key});

  @override
  State<TodoUI> createState() => _TodoUIState();
}

class _TodoUIState extends State<TodoUI> {
  List<TodoModel> listOfTask = [
    TodoModel(
      title: "advance todo",
      description: "Complete advance todo ui with functionality",
      date: "25 oct 2024",
    ),
    TodoModel(
      title: "advance",
      description: " advance todo ui with functionality",
      date: "25 oct 2024",
    ),
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  ///ADD TASK
  void submitData(bool isEdit, [TodoModel? taskObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (isEdit) {
        taskObj!.title = titleController.text;
        taskObj.description = descriptionController.text;
        taskObj.date = dateController.text;
      } else {
        listOfTask.add(
          TodoModel(
              title: titleController.text,
              description: descriptionController.text,
              date: dateController.text),
        );
      }
      clearControllers();
      Navigator.of(context).pop();
      setState(() {});
    }
  }

  ///CLEAR CONTROLLER
  void clearControllers() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///TEXT 1
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 25),
            child: Text(
              "Good morning",
              style: GoogleFonts.quicksand(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),

          ///TEXT 2
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Pathum",
              style: GoogleFonts.quicksand(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),

          ///CONTAINER
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromRGBO(217, 217, 217, 1),
              ),
              child: Column(
                children: [
                  ///TEXT -CREATE TO DO LIST
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 17.0),
                    child: Text(
                      "CREATE TO DO LIST",
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  ///CONTAINER - TO DO CARDS
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: listOfTask.length,
                          itemBuilder: (context, index) {
                            ///SLIDABLE CARD
                            return Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ///EDIT ICON
                                      GestureDetector(
                                        onTap: () {
                                          showBottomSheet(
                                              true, listOfTask[index]);
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              top: 23, left: 15),
                                          height: 55,
                                          width: 55,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1)),
                                          child: const Icon(
                                            Icons.edit_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),

                                      ///DELETE ICON
                                      GestureDetector(
                                        onTap: () {
                                          listOfTask.removeAt(index);
                                          setState(() {});
                                        },
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 15),
                                          height: 55,
                                          width: 55,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1)),
                                          child: const Icon(
                                            Icons.delete_outline,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 23.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.16),
                                          blurRadius: 12,
                                          offset: Offset(0, 4)),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      ///IMAGE CONTAINER
                                      Container(
                                          padding: const EdgeInsets.all(20),
                                          height: 80,
                                          width: 80,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                217, 217, 217, 1),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/icon/profileImage.svg",
                                            height: 40,
                                            width: 40,
                                          )),

                                      ///COLUMN FOR TEXT
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10.0, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ///TITLE
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Text(
                                                listOfTask[index].title,
                                                style: GoogleFonts.inter(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),

                                            ///DESCRIPTION
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.71,
                                                child: Text(
                                                  listOfTask[index].description,
                                                  style: GoogleFonts.inter(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            ///DATE
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Text(
                                                listOfTask[index].date,
                                                style: GoogleFonts.inter(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 0.7),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          showBottomSheet(false);
        },
        child: Container(
          height: 56,
          width: 56,
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            shape: BoxShape.circle,
            color: Color.fromRGBO(89, 57, 241, 1),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }

  ///BOTTOMSHEET
  void showBottomSheet(bool isEdit, [TodoModel? taskObj]) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                top: 15.0,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Create Task ",
                    style: GoogleFonts.quicksand(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color.fromRGBO(89, 57, 241, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),

                ///TEXTFIELD - TITLE
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: "Enter title here",
                    hintStyle: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(89, 57, 241, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(89, 57, 241, 1),
                        // color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color.fromRGBO(89, 57, 241, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),

                ///TEXTFIELD - DESCRIPTION
                TextField(
                  controller: descriptionController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "Enter description here",
                    hintStyle: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(89, 57, 241, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(89, 57, 241, 1),
                        // color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(89, 57, 241, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),

                ///DATEPICKER
                TextField(
                  controller: dateController,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );

                    String formattedDate =
                        DateFormat.yMMMd().format(pickedDate!);

                    setState(() {
                      dateController.text = formattedDate;
                    });
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                    ),
                    hintText: "add date",
                    hintStyle: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(89, 57, 241, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(89, 57, 241, 1),
                        // color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                ///SUBMIT
                Center(
                  child: GestureDetector(
                    onTap: () {
                      titleController.text = taskObj!.title;
                      descriptionController.text = taskObj.description;
                      dateController.text = taskObj.date;
                      setState(() {
                        submitData(isEdit, taskObj);
                      });
                    },
                    child: Container(
                      width: 320,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(89, 57, 241, 1),
                      ),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.quicksand(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        });
  }
}
