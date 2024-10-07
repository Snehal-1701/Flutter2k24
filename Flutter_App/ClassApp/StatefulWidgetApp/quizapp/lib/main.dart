import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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
      "question": "Who is the founder of Microsoft?",
      "options": ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer": 0,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer": 1,
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer": 3,
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Bill Gates", "Mark Zukerberg", "Lary Page", "Elon Musk"],
      "correctAnswer": 1,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer": 2,
    },
  ];

  int currentQuestionIndex = 0;
  int ans = 0;
  bool flag = false;
  int selectedAnswerIndex = -1;
  int count = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestion[currentQuestionIndex]["correctAnswer"]) {
        if (selectedAnswerIndex == answerIndex) {
          count++;
        }
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    }
    return const WidgetStatePropertyAll(null);
  }

  bool questionScreen = true;

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 183, 214, 240),
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
              height: 30,
            ),
            const SizedBox(
              height: 150,
              width: 150,
              child: Image(image: AssetImage('Assets/quiz1.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Question : ${currentQuestionIndex + 1}/${allQuestion.length}",
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
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
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
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
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
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
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
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
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
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestion.length - 1) {
                currentQuestionIndex++;
                selectedAnswerIndex = -1;
              } else {
                questionScreen = false;
              }
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
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 183, 214, 240),
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: NetworkImage("https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg")),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratulations !!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Score : $count / ${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  questionScreen = true;
                  currentQuestionIndex = 0;
                  selectedAnswerIndex = -1;
                  count = 0;
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
