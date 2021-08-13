import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback f; // _increment
  final quest;
  final int num;
  Quiz(this.f, this.quest, this.num);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(q: quest[num]['question'] as String),
        ...(quest[num]['answer'] as List<String>).map((answer) {
          return Answer(f, answer);
        }),
      ],
    );
  }
}
