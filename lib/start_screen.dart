import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/logo.dart';

/// The start screen widget for the quiz app.
class StartScreen extends StatelessWidget {
  /// Constructs a [StartScreen] widget.
  ///
  /// The [startQuiz] parameter is a callback function that will be called when
  /// the user taps on the "Start Quiz" button.
  const StartScreen(this.startQuiz, {super.key});

  /// Callback function to start the quiz.
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The Flutter Quiz",
            style: GoogleFonts.robotoMono(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40.0),
          const Logo(),
          const SizedBox(height: 40),
          Text(
            "Ready to Rumble?",
            style: GoogleFonts.robotoMono(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 100.0),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.only(
                  left: 10, right: 18, top: 10, bottom: 10),
              side: const BorderSide(color: Colors.white),
            ),
            icon: const Icon(Icons.chevron_right),
            label:
                Text("Start Quiz", style: GoogleFonts.robotoMono(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
