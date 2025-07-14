import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});
  @override
  State<StartScreen> createState() {
    return _ImageAndStartState();
  }
}

class _ImageAndStartState extends State<StartScreen> {
  void startQuiz() {
    setState(() {
      null;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize
            .min, //prevents from taking all the maximum vertical space by default
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 18),
              backgroundColor: const Color.fromARGB(200, 32, 172, 135),
              foregroundColor: Colors.white,
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
