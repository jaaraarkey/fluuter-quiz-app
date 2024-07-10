import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;
  final correct = Colors.black;
  final wrong = Colors.grey;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: itemData['question_index'] as int,
              isCorrectAnswer: isCorrectAnswer),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.robotoMono(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 6),
                Text(
                  itemData['user_answer'] as String,
                  style: GoogleFonts.robotoMono(
                      fontSize: 16, color: isCorrectAnswer ? wrong : correct),
                  textAlign: TextAlign.left,
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: GoogleFonts.robotoMono(
                      fontSize: 16, color: isCorrectAnswer ? correct : wrong),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 16)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
