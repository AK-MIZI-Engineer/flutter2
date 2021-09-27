

import 'package:flutter/material.dart';
//import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import 'result.dart';
//import './result.dart';

void main() {
  runApp(FooApp());
}

class FooApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FooAppState();
  }
}

class _FooAppState extends State<FooApp> {
  final List question = [
    {
      'questionText': 'What\'s your favorite color? ',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Yellow', "score": 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your favorite animal',
      'answer': [
        {'text': 'Cat', 'score': 2},
        {'text': 'Lion', 'score': 4},
        {'text': 'Tiger', 'score': 200},
        {'text': 'Rabbit', 'score': 6}
      ],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 7},
        {'text': 'Max', 'score': 10},
        {'text': 'Maxwell', 'score': 1}
      ],
    }
  ];

  // question = []; this is does not work if question is a constant

  var questionIndex = 0;
  var totalScore = 0;
  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    totalScore = totalScore + score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < question.length) {
      print('We have more questions!');
    } else {
      print('No more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('Max');
    // print(dummy);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Application"),
        ),
        body: questionIndex < question.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: questionIndex,
          question: question,
        )
            : Result(totalScore),
      ),
    );
  }
}
