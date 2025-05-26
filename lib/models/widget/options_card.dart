// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:demo_app/models/constants.dart';

class OptionsCard extends StatelessWidget {
  final String option;

  const OptionsCard({
    super.key,
    required this.option,
    required this.ontap,
    required this.isClicked,
    required this.color,
    required this.option1,
  });

  final bool isClicked;
  final Color color;
  final VoidCallback ontap;
  final String option1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        color: color,
        child: ListTile(
          title: Text(
            option,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22.0),
          ),
        ),
      ),
    );
  }
}
