import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  var question;
  final questionIndex;
  var answerQuestion;
  Quiz(
      {@required this.question,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),

        ...(question[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList()

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

        // RaisedButton(
        //   child: Text("answer1"),
        //   onPressed: _answerQuestion,
        // ),
        // RaisedButton(
        //   child: Text("answer2"),
        //   onPressed: _answerQuestion,
        // ),
        // RaisedButton
        //   child: Text("answer3"),
        //   onPressed: _answerQuestion,
        // ),
      ],
    );
  }
}
