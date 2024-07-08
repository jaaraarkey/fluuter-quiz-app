import 'package:flutter/material.dart';

class OutlinedButton extends StatelessWidget {
  OutlinedButton(
      {super.key, required Null Function() onPressed, required Text child}) {
    // Add a function body here
  }

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text("Start Quiz"),
    );
  }
}
