import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  Answers(this.answer);

  @override
  Widget build(BuildContext context) {
    return Text(this.answer);
  }
}
