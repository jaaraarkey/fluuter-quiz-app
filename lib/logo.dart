import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(context) {
    return Opacity(
      opacity: 1,
      child: Image.asset(
        "assets/images/quiz-logo.png",
        width: 200,
        height: 200,
        // color: const Color.fromARGB(200, 0, 23, 97),
      ),
    );
  }
}
