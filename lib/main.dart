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
  var _questions = [
    {
      "question": 'What is your favourite colour?',
      'answer': ['Yellow', 'Red', 'blue'],
    },
    {
      'question': 'What is your favourite animal?',
      'answer': ['Parrot', 'Dog', 'Fish']
    }
  ];
  void generateQuestionAnswers() {
    setState(() {
      if (questionIndex < 1 && answerIndex < 1) {
        questionIndex = questionIndex + 1;
        answerIndex = answerIndex + 1;
      } else {
        questionIndex = 0;
        answerIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz"),
            ),
            body: Column(
              children: <Widget>[
                Questions(_questions[questionIndex]['question']),
                ...(_questions[questionIndex]['answer'] as List<String>)
                    .map((temper) {
                  return Answers(generateQuestionAnswers, temper);
                }).toList()
              ],
            )));
  }
}
