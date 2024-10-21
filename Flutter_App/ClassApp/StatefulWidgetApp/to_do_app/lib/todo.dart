import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'todo_model.dart';
import 'package:intl/intl.dart';
// import 'card.dart';

class TodoAppUI extends StatefulWidget {
  const TodoAppUI({super.key});

  @override
  State<TodoAppUI> createState() => _TodoAppUIState();
}

class _TodoAppUIState extends State<TodoAppUI> {
  ///TITLE TEXTEDITING CONTROLLER
  TextEditingController titleController = TextEditingController();

  ///DESCRIPTION TEXTEDITING CONTROLLER
  TextEditingController descriptionController = TextEditingController();

  ///DATE TEXTEDITING CONTROLLER
  TextEditingController dateController = TextEditingController();

  ///TITLE EMPTY
  bool? titleEmpty;

  ///DESCRIPTION EMPTY
  bool? descriptionEmpty;

  ///DATE EMPTY
  bool? dateEmpty;

  ///COLOR LIST
  List colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  ///PROFILE IMAGE LIST
  List<String> imageList = [
    "assets/profile1.jpg",
    "assets/profile2.png",
    "assets/profile3.jpg",
    "assets/profile4.png",
  ];

  ///LIST OF TODOMODEL
  List<TodoModel> listOfTask = [
    TodoModel(
      title: "Flutter",
      description: "Building to do UI",
      date: "10 june 2024",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: buildCard(),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(2, 167, 177, 1),
        ),
        child: GestureDetector(
          onTap: () {
            titleEmpty = false;
            descriptionEmpty = false;
            dateEmpty = false;
            showBottomSheet(false);
          },
          child: const Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  ///SUBMIT
  void submitData(bool isEdit, [TodoModel? obj]) {
    // titleEmpty = titleController.text.trim().isEmpty;
    // descriptionEmpty = descriptionController.text.trim().isEmpty;
    // dateEmpty = dateController.text.trim().isEmpty;

    if (titleEmpty == false &&
        descriptionEmpty == false &&
        dateEmpty == false) {
      if (isEdit) {
        obj!.title = titleController.text;
        obj.description = descriptionController.text;
        obj.date = dateController.text;
      } else {
        listOfTask.add(
          TodoModel(
            title: titleController.text,
            date: dateController.text,
            description: descriptionController.text,
          ),
        );
      }
      clearController();
      Navigator.of(context).pop();
    }
    setState(() {});
  }

  // void submitData(bool isEdit, [TodoModel? obj]) {
  //   if (titleController.text.trim().isNotEmpty &&
  //       descriptionController.text.trim().isNotEmpty &&
  //       dateController.text.trim().isNotEmpty) {
  //     if (isEdit) {
  //       obj!.title = titleController.text;
  //       obj.description = descriptionController.text;
  //       obj.date = dateController.text;
  //     } else {
  //       listOfTask.add(
  //         TodoModel(
  //           title: titleController.text,
  //           date: dateController.text,
  //           description: descriptionController.text,
  //         ),
  //       );
  //     }
  //     clearController();
  //     Navigator.of(context).pop();
  //     setState(() {});
  //   }
  // }

  ///CLEAR CONTROLLER
  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  ///TODO CARD
  Widget buildCard() {
    return ListView.builder(
        itemCount: listOfTask.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: colorList[index % colorList.length],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 18),

                        ///PROFILE IMAGE
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(20),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child:
                              SvgPicture.asset("assets/svg/profileImage.svg"),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: SizedBox(
                            width: 255,

                            ///TITLE
                            child: Text(
                              listOfTask[index].title,
                              style: GoogleFonts.quicksand(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: SizedBox(
                            width: 257,

                            ///DESCRIPTION
                            child: Text(
                              listOfTask[index].description,
                              style: GoogleFonts.quicksand(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(84, 84, 84, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),

                      ///DATE
                      child: Text(
                        listOfTask[index].date,
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(84, 84, 84, 1),
                        ),
                      ),
                    ),
                    const Spacer(),

                    ///EDIT ICON
                    GestureDetector(
                      onTap: () {
                        titleEmpty = false;
                        descriptionEmpty = false;
                        dateEmpty = false;
                        titleController.text = listOfTask[index].title;
                        descriptionController.text =
                            listOfTask[index].description;
                        dateController.text = listOfTask[index].date;
                        showBottomSheet(true, listOfTask[index]);
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        listOfTask.removeAt(index);
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.delete_outlined,
                        color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  ///BOTTOMSHEET
  void showBottomSheet(bool isEdit, [TodoModel? obj]) {
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
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      titleEmpty == true ? "Please add title" : " ",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                ///TEXTFIELD - TITLE
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    // hintText: "Enter title here",
                    // hintStyle: GoogleFonts.quicksand(
                    //   fontSize: 15,
                    //   fontWeight: FontWeight.w400,
                    //   color: const Color.fromRGBO(0, 0, 0, 1),
                    // ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(0, 139, 148, 1),
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
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      descriptionEmpty == true ? "Please add description" : " ",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                ///TEXTFIELD - DESCRIPTION
                TextField(
                  controller: descriptionController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    // hintText: "Enter description here",
                    // hintStyle: GoogleFonts.quicksand(
                    //   fontSize: 15,
                    //   fontWeight: FontWeight.w400,
                    //   color: const Color.fromRGBO(0, 0, 0, 1),
                    // ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(0, 139, 148, 1),
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
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      dateEmpty == true ? "Please add date" : " ",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
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
                    // hintText: "add date",
                    hintStyle: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(0, 139, 148, 1),
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
                      titleEmpty = titleController.text.trim().isEmpty;
                      descriptionEmpty =
                          descriptionController.text.trim().isEmpty;
                      dateEmpty = dateController.text.trim().isEmpty;
                      setState(() {
                        // isEdit ? submitData(isEdit, obj) : submitData(isEdit);
                        if (isEdit) {
                          submitData(isEdit, obj!);
                        } else {
                          submitData(isEdit);
                        }
                      });
                    },
                    child: Container(
                      width: 320,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(0, 139, 148, 1),
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
