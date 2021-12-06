import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var qIndex = 0;

  void ansQues() {
    qIndex = qIndex + 1;
    if (qIndex > 1) qIndex = 0;
    print(qIndex);
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
            Text(questions[qIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: ansQues,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: ansQues,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: ansQues,
            ),
          ],
        ),
      ),
    );
  }
}
