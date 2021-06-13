import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Thanks for completing the survey! Your Score is:',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            score.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text('Try Again'),
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
        )
      ],
    );
  }
}
