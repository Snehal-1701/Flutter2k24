import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List<Map> allQuestion = [
    {
      "question" : "Who is the founder of Microsoft?",
      "options" : ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer" : 0,
    },
    {
      "question" : "Who is the founder of Apple?",
      "options" : ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer" : 1,
    },
    {
      "question" : "Who is the founder of SpaceX?",
      "options" : ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer" : 3,
    },
    {
      "question" : "Who is the founder of Meta?",
      "options" : ["Bill Gates", "Mark Zukerberg", "Lary Page", "Elon Musk"],
      "correctAnswer" : 1,
    },
    {
      "question" : "Who is the founder of Google?",
      "options" : ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer" : 2,
    },
  ];

  int currentQuestionIndex = 0;
  int ans = 0;
  bool  flag = false;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QuizApp",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Question : ${currentQuestionIndex+1}/${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 380,
            height: 50,
            child: Text(
              allQuestion[currentQuestionIndex]['question'],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ButtonStyle(
                backgroundColor: flag ? MaterialStateProperty.all(Colors.green) : MaterialStateProperty.all(Colors.white),
              ),
              child: Text(
                allQuestion[currentQuestionIndex]["options"][0],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
                    SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                allQuestion[currentQuestionIndex]["options"][1],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
                    SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                allQuestion[currentQuestionIndex]["options"][2],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
                    SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                allQuestion[currentQuestionIndex]["options"][3],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(currentQuestionIndex < allQuestion.length-1) {
            currentQuestionIndex++;
            setState(() {});
          }
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.forward,
          color: Colors.orange,
        ),
      ),
    );
  }
}