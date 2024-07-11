import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

/// A screen that displays a question and answer options.
class QuestionScreen extends StatefulWidget {
  /// Callback function that is called when an answer is selected.
  final void Function(String answer) onSelectAnswer;

  /// Constructs a [QuestionScreen] with the given [onSelectAnswer] callback.
  const QuestionScreen({super.key, required this.onSelectAnswer});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  /// Callback function that is called when an answer is selected.
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.maxFinite,
      height: double.infinity,
      child: Container(
        width: 375,
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Text(
                currentQuestion.text,
                style: GoogleFonts.robotoMono(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                const SizedBox(
                  height: 10,
                );
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
