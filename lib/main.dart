import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  void resetState() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    const questions = [
      {
        'q': 'Favorite Color',
        'a': [
          {'text': 'red', 'score': 1},
          {'text': 'blue', 'score': 2},
          {'text': 'yellow', 'score': 8},
        ],
      },
      {
        'q': 'Favorite Animal',
        'a': [
          {'text': 'tiger', 'score': 2},
          {'text': 'lion', 'score': 1},
          {'text': 'monkey', 'score': 3},
          {'text': 'fish', 'score': 6},
        ],
      },
      {
        'q': 'Favorite Food',
        'a': [
          {'text': 'pizza', 'score': 10},
          {'text': 'roti', 'score': 2},
          {'text': 'burger', 'score': 4},
          {'text': 'ice-cream', 'score': 5},
          {'text': 'chips', 'score': 7},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.black54,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
              )
            : Result(totalScore, resetState),
      ),
    );
  }
}
