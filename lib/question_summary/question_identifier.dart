import 'package:flutter/material.dart';

/// A widget that displays a question identifier with an icon indicating whether the answer is correct or not.
class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });

  final int questionIndex;
  final bool isCorrectAnswer;
  final correctIcon = const Icon(Icons.check, color: Colors.green);
  final wrongIcon = const Icon(Icons.close, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrectAnswer ? Colors.white : Colors.white.withOpacity(0.3),
      ),
      child: isCorrectAnswer ? correctIcon : wrongIcon,
    );
  }
}
