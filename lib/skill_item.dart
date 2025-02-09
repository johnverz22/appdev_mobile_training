import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  final String skill;

  const SkillItem({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.check_circle, color: Colors.green),
        SizedBox(width: 8.0),
        Text(
          skill,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
