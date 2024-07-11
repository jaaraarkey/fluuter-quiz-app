import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
              color: Color.fromARGB(255, 60, 5, 222), width: 1),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
