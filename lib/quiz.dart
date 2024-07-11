import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // List to store selected answers

  var activeScreen = 'start-screen'; // Variable to track the active screen

  void switchScreen() {
    setState(
      () {
        activeScreen = 'question-screen'; // Switch to the question screen
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer); // Add the selected answer to the list

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // If all questions are answered
        activeScreen = 'result-screen'; // Switch to the result screen
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'start-screen'; // Switch back to the start screen
      selectedAnswers = []; // Clear the selected answers list
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget =
        StartScreen(switchScreen); // Default screen is the start screen

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      ); // Switch to the question screen if activeScreen is 'question-screen'
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          onRestart:
              restartQuiz); // Switch to the result screen if activeScreen is 'result-screen'
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF5433FF),
                Color(0xFF20BDFF),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child:
                screenWidget), // Display the appropriate screen based on the activeScreen value
      ),
    );
  }
}
