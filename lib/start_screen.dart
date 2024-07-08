import 'package:flutter/material.dart';
import 'package:quiz_app/logo.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Logo(),
          // Image.asset("assets/images/quiz-Logo.png"),
          const Text(
            "Ready for rumble?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              side: const BorderSide(color: Colors.white),
            ),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
