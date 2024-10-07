import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  List<Map> moviePoster = [
    {
      "category" : "Action Movies",
      "moviePosters" : [
        "https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoruLmbZxqCr-JiEHYrUmR9RJDhI9gfm4NqQ&s",
        
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network("https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg"),
                        ),
                         Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network("https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg"),
                        ),
                         Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network("https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg"),
                        ),
                         Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network("https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg"),
                        ),
                         Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network("https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg"),
                        ),
                         Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network("https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
