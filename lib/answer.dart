import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionAnswer;
  final String answerText;

  Answer(this.questionAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 12),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(this.answerText),
          onPressed: this.questionAnswer,
        ));
  }
}
