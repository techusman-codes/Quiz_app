// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:demo_app/models/constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    super.key,
    required this.result,
    required this.questionLenght,
    required this.onPressed,
    
  });
  final int result;
  final int questionLenght;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backround,
      content: Padding(
        padding: EdgeInsets.all(70.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Result', style: TextStyle(color: neutral, fontSize: 22.0)),
            CircleAvatar(
              radius: 70.0,
              backgroundColor:
                  result == questionLenght / 2
                      ? Colors.yellow
                      : result < questionLenght / 2
                      ? incorrect
                      : correct,
              child: Text(
                '$result/$questionLenght',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              result == questionLenght / 2
                  ? "Almost there!"
                  : result < questionLenght / 2
                  ? "Try Again ?"
                  : 'Great!',
              style: TextStyle(color: neutral),
            ),
            SizedBox(height: 25.0),
            GestureDetector(
              onTap: onPressed,
              child: Text(
                'Start Over',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
