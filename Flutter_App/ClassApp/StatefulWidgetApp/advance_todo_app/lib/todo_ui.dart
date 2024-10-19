import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodoUI extends StatefulWidget {
  const TodoUI({super.key});

  @override
  State<TodoUI> createState() => _TodoUIState();
}

class _TodoUIState extends State<TodoUI> {
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
                      padding: const EdgeInsets.only(top:20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            ///SLIDABLE CARD
                            return Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ///EDIT ICON
                                      Container(
                                        margin: const EdgeInsets.only(top:23,left:15),
                                        height: 55,
                                        width: 55,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1)
                                        ),
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                    
                                      ///DELETE ICON
                                      Container(
                                        margin: const EdgeInsets.only(left:15),
                                        height: 55,
                                        width: 55,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1)
                                        ),
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.white,
                                          size: 30,
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
                                            color: Color.fromRGBO(217, 217, 217, 1),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/icon/profileImage.svg",
                                            height: 40,
                                            width: 40,
                                          )),
                              
                                      ///COLUMN FOR TEXT
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:10.0,left:10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ///TITLE
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child: Text(
                                                "Lorem Ipsum is simply dummy industry. ",
                                                style: GoogleFonts.inter(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                              
                                            ///DESCRIPTION
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.71,
                                                child: Text(
                                                  "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
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
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child: Text(
                                                "10 July 2023",
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
    );
  }
}
