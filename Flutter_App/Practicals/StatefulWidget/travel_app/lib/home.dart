import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
        title: Text(
          "Where do you want to travel?",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 290,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 237, 248, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select Destination",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(52, 111, 249, 1),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color.fromRGBO(52, 111, 249, 1),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(52, 111, 249, 1),
                  ),
                  child: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Deals",
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Sorted by lower price",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(179, 182, 187, 1)),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 18),
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(233, 237, 248, 1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "El Cairo",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                        size: 16),
                                    const SizedBox(width: 5),
                                    Text(
                                      "4.6",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Egypt",
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          138, 150, 172, 1)),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(3),
                                  height: 60,
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/icons/image.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 55,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        "More",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              52, 111, 249, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 55,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromRGBO(
                                            52, 111, 249, 1),
                                      ),
                                      child: Text(
                                        r"$260",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 18),
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(233, 237, 248, 1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "El Cairo",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                        size: 16),
                                    const SizedBox(width: 5),
                                    Text(
                                      "4.6",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Egypt",
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          138, 150, 172, 1)),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(3),
                                  height: 60,
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/icons/image.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 55,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        "More",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              52, 111, 249, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 55,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromRGBO(
                                            52, 111, 249, 1),
                                      ),
                                      child: Text(
                                        r"$260",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 18),
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(233, 237, 248, 1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "El Cairo",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                        size: 16),
                                    const SizedBox(width: 5),
                                    Text(
                                      "4.6",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Egypt",
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          138, 150, 172, 1)),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(3),
                                  height: 60,
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/icons/image.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 55,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        "More",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              52, 111, 249, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 55,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromRGBO(
                                            52, 111, 249, 1),
                                      ),
                                      child: Text(
                                        r"$260",
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
      
                  // Expanded(
                  //   child: Container(
                  //     height:300,
                  //     child: ListView.builder(
                  //         shrinkWrap: true,
                  //         itemCount: 2,
                  //         itemBuilder: (BuildContext context, int index) {
                  //           return Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "Popular Destinations",
                  //                 style: GoogleFonts.inter(
                  //                   fontSize: 22,
                  //                   fontWeight: FontWeight.w800,
                  //                   color:  Colors.black,
                  //                 ),
                  //               ),
                  //               Row(
                  //                 children: [
                  //                   Text(
                  //                     "Sorted by Higher reting",
                  //                     style: GoogleFonts.inter(
                  //                         fontSize: 14,
                  //                         fontWeight: FontWeight.w500,
                  //                         color: const Color.fromRGBO(
                  //                             179, 182, 187, 1)),
                  //                   ),
                  //                   const Icon(
                  //                     Icons.keyboard_arrow_down_rounded,
                  //                     color: Color.fromRGBO(179, 182, 187, 1),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SingleChildScrollView(
                  //                 scrollDirection: Axis.horizontal,
                  //                 child: Row(
                  //                   children: [
                  //                     Padding(
                  //                       padding: const EdgeInsets.only(
                  //                           top: 18, right: 18.0),
                  //                       child: Column(
                  //                         children: [
                  //                           Container(
                  //                             width: 150,
                  //                             height: 150,
                  //                             decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20),
                  //                               color: const Color.fromRGBO(
                  //                                   233, 237, 248, 1),
                  //                             ),
                  //                             child: Image.asset(
                  //                               "assets/icons/image.png",
                  //                             ),
                  //                           ),
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 15),
                  //                             width: 150,
                  //                             child: Column(
                  //                               children: [
                  //                                 Row(
                  //                                   children: [
                  //                                     Text(
                  //                                       "Cancum",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w600,
                  //                                         color: Colors.black,
                  //                                       ),
                  //                                     ),
                  //                                     const Spacer(),
                  //                                     const Icon(Icons.star,
                  //                                         color: Color.fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                         size: 16),
                  //                                     const SizedBox(width: 5),
                  //                                     Text(
                  //                                       "4.6",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w500,
                  //                                         color: const Color
                  //                                             .fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                       ),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                                 Row(
                  //                                   mainAxisAlignment:
                  //                                       MainAxisAlignment
                  //                                           .spaceBetween,
                  //                                   children: [
                  //                                     Text(
                  //                                       "Mexico",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                     Text(
                  //                                       "848 Reviews",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.only(
                  //                         right: 18.0,
                  //                       ),
                  //                       child: Column(
                  //                         children: [
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 18),
                  //                             // padding: const EdgeInsets.all(10),
                  //                             width: 150,
                  //                             height: 150,
                  //                             decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20),
                  //                               color: const Color.fromRGBO(
                  //                                   233, 237, 248, 1),
                  //                             ),
                  //                             child: Image.asset(
                  //                               "assets/icons/image.png",
                  //                             ),
                  //                           ),
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 15),
                  //                             width: 150,
                  //                             child: Column(
                  //                               children: [
                  //                                 Row(
                  //                                   children: [
                  //                                     Text(
                  //                                       "Cancum",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w600,
                  //                                         color: Colors.black,
                  //                                       ),
                  //                                     ),
                  //                                     const Spacer(),
                  //                                     const Icon(Icons.star,
                  //                                         color: Color.fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                         size: 16),
                  //                                     const SizedBox(width: 5),
                  //                                     Text(
                  //                                       "4.6",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w500,
                  //                                         color: const Color
                  //                                             .fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                       ),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                                 Row(
                  //                                   mainAxisAlignment:
                  //                                       MainAxisAlignment
                  //                                           .spaceBetween,
                  //                                   children: [
                  //                                     Text(
                  //                                       "Mexico",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                     Text(
                  //                                       "848 Reviews",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.only(
                  //                         right: 18.0,
                  //                       ),
                  //                       child: Column(
                  //                         children: [
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 18),
                  //                             // padding: const EdgeInsets.all(10),
                  //                             width: 150,
                  //                             height: 150,
                  //                             decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20),
                  //                               color: const Color.fromRGBO(
                  //                                   233, 237, 248, 1),
                  //                             ),
                  //                             child: Image.asset(
                  //                               "assets/icons/image.png",
                  //                             ),
                  //                           ),
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 15),
                  //                             width: 150,
                  //                             child: Column(
                  //                               children: [
                  //                                 Row(
                  //                                   children: [
                  //                                     Text(
                  //                                       "Cancum",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w600,
                  //                                         color: Colors.black,
                  //                                       ),
                  //                                     ),
                  //                                     const Spacer(),
                  //                                     const Icon(Icons.star,
                  //                                         color: Color.fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                         size: 16),
                  //                                     const SizedBox(width: 5),
                  //                                     Text(
                  //                                       "4.6",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w500,
                  //                                         color: const Color
                  //                                             .fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                       ),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                                 Row(
                  //                                   mainAxisAlignment:
                  //                                       MainAxisAlignment
                  //                                           .spaceBetween,
                  //                                   children: [
                  //                                     Text(
                  //                                       "Mexico",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                     Text(
                  //                                       "848 Reviews",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.only(
                  //                         right: 18.0,
                  //                       ),
                  //                       child: Column(
                  //                         children: [
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 18),
                  //                             // padding: const EdgeInsets.all(10),
                  //                             width: 150,
                  //                             height: 150,
                  //                             decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20),
                  //                               color: const Color.fromRGBO(
                  //                                   233, 237, 248, 1),
                  //                             ),
                  //                             child: Image.asset(
                  //                               "assets/icons/image.png",
                  //                             ),
                  //                           ),
                  //                           Container(
                  //                             margin:
                  //                                 const EdgeInsets.only(top: 15),
                  //                             width: 150,
                  //                             child: Column(
                  //                               children: [
                  //                                 Row(
                  //                                   children: [
                  //                                     Text(
                  //                                       "Cancum",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w600,
                  //                                         color: Colors.black,
                  //                                       ),
                  //                                     ),
                  //                                     const Spacer(),
                  //                                     const Icon(Icons.star,
                  //                                         color: Color.fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                         size: 16),
                  //                                     const SizedBox(width: 5),
                  //                                     Text(
                  //                                       "4.6",
                  //                                       style: GoogleFonts.inter(
                  //                                         fontSize: 14,
                  //                                         fontWeight:
                  //                                             FontWeight.w500,
                  //                                         color: const Color
                  //                                             .fromRGBO(
                  //                                             228, 161, 2, 1),
                  //                                       ),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                                 Row(
                  //                                   mainAxisAlignment:
                  //                                       MainAxisAlignment
                  //                                           .spaceBetween,
                  //                                   children: [
                  //                                     Text(
                  //                                     Text(
                  //                                       "Mexico",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                     Text(
                  //                                       "848 Reviews",
                  //                                       style: GoogleFonts.inter(
                  //                                           fontSize: 12,
                  //                                           fontWeight:
                  //                                               FontWeight.w500,
                  //                                           color: const Color
                  //                                               .fromRGBO(138,
                  //                                               150, 172, 1)),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ],
                  //           );
                  //         }),
                  //   ),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     height: double.maxFinite,
                  //     child: ListView.builder(
                  //         itemCount: 2,
                  //         shrinkWrap: true,
                  //         itemBuilder: (context, index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Column(
                  //               children: [
                  //                 Text(
                  //                   "Popular Destinations",
                  //                   style: GoogleFonts.inter(
                  //                     fontSize: 22,
                  //                     fontWeight: FontWeight.w800,
                  //                     color: Colors.black,
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   children: [
                  //                     Text(
                  //                       "Sorted by Higher reting",
                  //                       style: GoogleFonts.inter(
                  //                           fontSize: 14,
                  //                           fontWeight: FontWeight.w500,
                  //                           color: const Color.fromRGBO(
                  //                               179, 182, 187, 1)),
                  //                     ),
                  //                     const Icon(
                  //                       Icons.keyboard_arrow_down_rounded,
                  //                       color: Color.fromRGBO(179, 182, 187, 1),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Row(
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Container(
                  //                           width: 150,
                  //                           height: 150,
                  //                           decoration: BoxDecoration(
                  //                             borderRadius: BorderRadius.circular(20),
                  //                             color: const Color.fromRGBO(
                  //                                 233, 237, 248, 1),
                  //                           ),
                  //                           child: Image.asset(
                  //                             "assets/icons/image.png",
                  //                           ),
                  //                         ),
                  //                         Row(
                  //                           children: [
                  //                             Text(
                  //                               "Cancum",
                  //                               style: GoogleFonts.inter(
                  //                                 fontSize: 14,
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                               ),
                  //                             ),
                  //                             const Spacer(),
                  //                             const Icon(Icons.star,
                  //                                 color:
                  //                                     Color.fromRGBO(228, 161, 2, 1),
                  //                                 size: 16),
                  //                             const SizedBox(width: 5),
                  //                             Text(
                  //                               "4.6",
                  //                               style: GoogleFonts.inter(
                  //                                 fontSize: 14,
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: const Color.fromRGBO(
                  //                                     228, 161, 2, 1),
                  //                               ),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                         Row(
                  //                           children: [
                  //                             Text(
                  //                               "Mexico",
                  //                               style: GoogleFonts.inter(
                  //                                   fontSize: 12,
                  //                                   fontWeight: FontWeight.w500,
                  //                                   color: const Color.fromRGBO(
                  //                                       138, 150, 172, 1)),
                  //                             ),
                  //                             Text(
                  //                               "848 Reviews",
                  //                               style: GoogleFonts.inter(
                  //                                   fontSize: 12,
                  //                                   fontWeight: FontWeight.w500,
                  //                                   color: const Color.fromRGBO(
                  //                                       138, 150, 172, 1)),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           );
                  //         }),
                  //   ),
                  // ),
                
          Container(
            height:MediaQuery.of(context).size.height*0.45,
            child: ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Popular Destinations",
                        style: GoogleFonts.inter(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sorted by Higher rating",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color.fromRGBO(179, 182, 187, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Image.asset(
                                  "assets/icons/image.png",
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Cancun",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  //const Spacer(),
                                  const Icon(
                                                                      Icons.star,
                                                                      color: Color.fromRGBO(228, 161, 2, 1),
                                                                      size: 16,
                                                                    ),
                                                                    const SizedBox(width: 5),
                                                                    Text(
                                                                      "4.6",
                                                                      style: GoogleFonts.inter(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: const Color.fromRGBO(228, 161, 2, 1),
                                                                      ),
                                                                    ),
            
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mexico",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(138, 150, 172, 1),
                                    ),
                                  ),
                                  Text(
                                    "848 Reviews",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(138, 150, 172, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
              
              
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
