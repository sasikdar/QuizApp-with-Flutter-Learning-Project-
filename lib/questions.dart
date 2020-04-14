import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText,
        textAlign: TextAlign.center, style: TextStyle(fontSize: 28));
  }
}
