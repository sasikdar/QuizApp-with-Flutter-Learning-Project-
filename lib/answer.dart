import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final Function generateQuestionAnswers;
  Answers(this.generateQuestionAnswers, this.answer);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: generateQuestionAnswers,
      child: Text(answer), //Answers(_answers[answerIndex][0]),
      color: Colors.cyanAccent,
    );
  }
}
