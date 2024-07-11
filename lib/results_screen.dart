import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numQuestions = questions.length.toString();
    final numCorrectAnswers = summaryData
        .where((data) => data['correct_answer'] == data['user_answer'])
        .length
        .toString();

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF5433FF),
            Color(0xFF20BDFF),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          shape: BoxShape.rectangle),
      child: SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 16),
              Text(
                'You\'ve ansered $numCorrectAnswers  out of $numQuestions  questions correctly!',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              QuestionsSummary(summaryData),
              const SizedBox(height: 60),
              OutlinedButton.icon(
                onPressed: onRestart,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.only(
                      left: 10, right: 18, top: 10, bottom: 10),
                  side: const BorderSide(color: Colors.white),
                ),
                icon: const Icon(Icons.refresh),
                label: Text("Restart Quiz",
                    style: GoogleFonts.robotoMono(fontSize: 16)),
              )
            ])),
      ),
    );
  }
}
