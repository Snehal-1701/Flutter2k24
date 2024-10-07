import 'package:flutter/material.dart';

class ScreenUI extends StatelessWidget {
  const ScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.grey[800],
        ),
        centerTitle: true,
        title: const Text(
          "Recomended",
          style: TextStyle(
            color: Color.fromRGBO(0, 91, 135, 1),
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(8, 8),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // first text
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Start a new career",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // row buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  // height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(0, 91, 135, 1),
                  ),

                  child: const Text(
                    "Data Science",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  // height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 219, 230, 236),
                  ),

                  child: const Text(
                    "Machine Learning",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 91, 135, 1),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  // height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 219, 230, 236),
                  ),

                  child: const Text(
                    "Apache Spark",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 91, 135, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // space
          const SizedBox(
            height: 10,
          ),

          // Scroll
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 7.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset("assets/logo.jpeg"),
                            ),

                            // Column
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Data Science",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Harvard Universiy",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 202,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Data Science",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Machine Learning",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 7.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset("assets/logo.jpeg"),
                            ),

                            // Column
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "AI & ML",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Harvard Universiy",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 202,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Machine Learning",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Decision Tree",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 7.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[ 200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset("assets/logo.jpeg"),
                            ),

                            // Column
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Big Data",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Harvard Universiy",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 202,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Big Data",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Apache Spark",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 7.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset("assets/logo.jpeg"),
                            ),

                            // Column
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Devops",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Harvard Universiy",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 202,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Docker",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 202, 222, 234),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Text(
                                          "Kubernetes",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(0, 91, 135, 1),
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
