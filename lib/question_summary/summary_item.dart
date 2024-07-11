import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

/// A widget that represents a summary item in a quiz app.
class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  /// The data for the item.
  final Map<String, Object> itemData;

  /// The color for correct answers.
  final correct = Colors.black;

  /// The color for wrong answers.
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
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        size: 16,
                        isCorrectAnswer ? Icons.check : Icons.close,
                        color: isCorrectAnswer ? correct : wrong,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        itemData['user_answer'] as String,
                        style: GoogleFonts.robotoMono(
                          fontSize: 12,
                          color: isCorrectAnswer ? correct : wrong,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: GoogleFonts.robotoMono(
                      fontSize: 12, color: isCorrectAnswer ? wrong : correct),
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
