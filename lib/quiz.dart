import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['q']),
        ...(questions[questionIndex]['a'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(() => answerQuestion(a['score']), a['text']);
        }).toList()
      ],
    );
  }
}
