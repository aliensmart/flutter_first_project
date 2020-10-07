import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionAnswer;

  Answer(this.questionAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 12),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          onPressed: this.questionAnswer,
        ));
  }
}
