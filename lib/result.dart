import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text('You did it'),
      ElevatedButton(child: Text('Start Again!'), onPressed: resetHandler)
    ]));
  }
}
