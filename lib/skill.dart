import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final String skill;

  const Skill({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.check_circle, color: const Color.fromARGB(255, 28, 213, 86)),
      SizedBox(width: 4),
      Text(skill, style: TextStyle(fontSize: 18)),
    ]);
  }
}
