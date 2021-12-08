import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final VoidCallback ansQuestion;

  Quiz(
      {required this.questions,
      required this.ansQuestion,
      required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIndex]['Q1'].toString(),
        ),
        ...(questions[qIndex]['A1'] as List<String>).map((answer) {
          return Answer(ansQuestion, answer);
        }).toList()
      ],
    );
  }
}
