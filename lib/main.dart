import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
      if (_qIndex > 1) _qIndex = 0;
    });
    print(_qIndex);
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
        body: Column(
          children: [
            Question(
              questions[_qIndex]['Q1'].toString(),
            ),
            ...(questions[_qIndex]['A1'] as List<String>).map((answer) {
              return Answer(_ansQues, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
