import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 500,
      margin: EdgeInsets.fromLTRB(20, 120, 20, 50),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 73, 136, 114),
              Color.fromARGB(255, 46, 111, 126)
            ],
          ),
          border: Border.all(
            color: Color.fromARGB(255, 204, 216, 29),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          }).toList(),
        ],
      ),
    );
  }
}
