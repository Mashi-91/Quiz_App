import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/question.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';

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
  var _totalScore = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more question!');
    }
    print(_questionIndex);
  }


  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 1},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite Country?',
      'answers': [
        {'text': 'India', 'score': 10},
        {'text': 'America', 'score': 4},
        {'text': 'Australia', 'score': 3},
        {'text': 'Turkey', 'score': 1}
      ]
    }
  ];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : const Result()),
    );
  }
}
