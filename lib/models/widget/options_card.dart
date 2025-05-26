// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:demo_app/models/constants.dart';

class OptionsCard extends StatelessWidget {
  final String option;

  const OptionsCard({
    super.key,
    required this.option,

    required this.isClicked,
    required this.color,
    required this.option1,
  });

  final bool isClicked;
  final Color color;

  final String option1;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(
          option,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }
}
