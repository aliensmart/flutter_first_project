import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      "questionText": "What's your favorite color",
      "answers": ['Blue', 'Red', 'White', 'Green'],
    },
    {
      "questionText": "What's your favorite animal",
      "answers": ['Cat', 'Pigeon', 'Snake', 'Dog'],
    },
    {
      "questionText": "What's your favorite country",
      "answers": ['Burkina Faso', 'Ghana', 'Nigeria', 'Togo'],
    },
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("Question Answered");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You Did It'),
              ),
      ),
    );
  }
}
