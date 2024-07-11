import 'package:flutter/material.dart';

/// A custom button widget for displaying answer options in a quiz app.
class AnswerButton extends StatelessWidget {
  /// The text to display on the button.
  final String answerText;

  /// The callback function to execute when the button is tapped.
  final void Function() onTap;

  /// Creates a new [AnswerButton] instance.
  /// The [answerText] parameter is required and specifies the text to display on the button.
  /// The [onTap] parameter is required and specifies the callback function to execute when the button is tapped.
  const AnswerButton({
    required this.answerText,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: Color.fromARGB(255, 60, 5, 222),
              width: 1,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            )),
        child: Text(
          answerText,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
