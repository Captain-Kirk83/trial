import 'package:flutter/material.dart';
import 'package:trial/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _ansQues() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'Q1': 'What\'s your favorite color?',
        'A1': ['red', 'blue', 'black'],
      },
      {
        'Q1': 'What\'s your favorite animal?',
        'A1': ['rabbit', 'snake', 'tiger'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                ansQuestion: _ansQues,
                qIndex: _qIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
