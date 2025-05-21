import 'package:demo_app/models/constants.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.questions,
    required this.indexAction,
    required this.totalQuestions,
  });
  // we need the Questions title and the total number of Questions and also the index

  final String questions;
  final int indexAction;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Question ${indexAction + 1}/$totalQuestions: $questions',
        style: TextStyle(fontSize: 24.0, color: neutral),
      ),
    );
  }
}
