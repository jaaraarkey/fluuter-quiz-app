import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/summary_item.dart';

/// A widget that displays a summary of questions.
class QuestionsSummary extends StatelessWidget {
  /// Constructs a [QuestionsSummary] widget.
  ///
  /// The [summaryData] parameter is a list of maps containing the data for each question summary.
  const QuestionsSummary(
    this.summaryData, {
    super.key,
  });

  /// The data for each question summary.
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
