import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'card.dart';

class To_Do_UI extends StatefulWidget {
  const To_Do_UI({super.key});

  @override
  State<To_Do_UI> createState() => _To_Do_UI();
}

class _To_Do_UI extends State<To_Do_UI> {
  List colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
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
            bottomSheet();
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

  Widget buildCard() {
    return ListView.builder(
        itemCount: 8,
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
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                            size: 50,
                          ),
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
                            child: Text(
                              "Lorem Ipsum is simply setting industry.",
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
                            child: Text(
                              "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
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
                      child: Text(
                        "10 July 2023",
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(84, 84, 84, 1),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 17,
                      height: 17,
                      child: Image.asset(
                        "assets/svg/edit_logo.png",
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 17,
                      height: 17,
                      child: Image.asset(
                        "assets/svg/delete_icon.png",
                      ),
                      // Icon(
                      //   Icons.delete,
                      //   color: Color.fromRGBO(0, 139, 148, 1),
                      // ),
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

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15),
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Task Title",
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black
                        // color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Description",
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black
                        // color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Date",
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black
                        // color: Color.fromRGBO(2, 167, 177, 1),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
