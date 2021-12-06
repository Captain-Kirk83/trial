import 'package:flutter/material.dart';

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
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[_qIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _ansQues,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _ansQues,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _ansQues,
            ),
          ],
        ),
      ),
    );
  }
}
