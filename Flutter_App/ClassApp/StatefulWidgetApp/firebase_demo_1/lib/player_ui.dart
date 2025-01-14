import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerUI extends StatefulWidget {
  const PlayerUI({super.key});

  @override
  State<PlayerUI> createState() => _PlayerUI();
}

class _PlayerUI extends State<PlayerUI> {
  List<Map> infoList = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController companyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          // Space
          const SizedBox(height: 15),
          // name textfield
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Name",
              hintStyle: GoogleFonts.quicksand(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
          // Space
          const SizedBox(height: 20),
          // dream company textfield
          TextField(
            controller: companyController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(15),
              )),
              hintText: "Dream Company",
              hintStyle: GoogleFonts.quicksand(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          // submit button
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 150, 68, 188),
                ),
              ),
              onPressed: () {
                addMap();
                setState(() {});
              },
              child: Text(
                "Submit",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          Expanded(
            child: ListView.builder(
                itemCount: infoList.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  // print("list : $infoList");
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 244, 206, 251),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name : ${infoList[index]['name']}",
                          style: GoogleFonts.quicksand(
                            // color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dream Company : ${infoList[index]['company']}",
                          style: GoogleFonts.quicksand(
                            // color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  void addMap() {
    Map<String, String> data1 = {};
    String name = nameController.text.trim();
    String company = companyController.text.trim();

    if (name != "" && company != "") {
      data1.addAll({"name": name, "company": company});
      infoList.add(data1);
      print(infoList);
      nameController.clear();
      companyController.clear();
    }
  }
}
