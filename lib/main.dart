import 'package:flutter/material.dart';
import 'package:quiz_project/questions.dart';
import 'package:quiz_project/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<StatefulWidget> {
  var questionIndex = 0;
  var answerIndex = 0;
  List<String> _questions = [
    'What is your favourite colour?',
    'What is your favourite animal?'
  ];
  void generateQuestionAnswers() {
    setState(() {
      if (questionIndex < 2 && answerIndex < 2) {
        questionIndex = questionIndex + 1;
        answerIndex = answerIndex + 1;
      } else
        print('fuck off');
    });
  }

  List<List<String>> _answers = [
    ['Yellow', 'Red', 'blue'],
    ['Parrot', 'Dog', 'Fish']
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            body: Column(
              children: <Widget>[
                Questions(_questions[questionIndex]),
                RaisedButton(
                    onPressed: generateQuestionAnswers,
                    child: Answers(_answers[answerIndex][0])),
                RaisedButton(
                    onPressed: generateQuestionAnswers,
                    child: Answers(_answers[answerIndex][1])),
                RaisedButton(
                    onPressed: generateQuestionAnswers,
                    child: Answers(_answers[answerIndex][2]))
              ],
            )));
  }
}
