import 'package:flutter/material.dart';

import 'skill_item.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile Picture
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile_picture.jpg',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Name
            Center(
              child: Text(
                'John Doe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8.0),

            // About Me
            Text(
              'Hello! I am a passionate developer with a keen interest in mobile app development. I love learning new technologies and building innovative solutions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),

            // Skills Section
            Text(
              'Skills & Interests:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SkillItem(skill: 'Flutter Development'),
                SkillItem(skill: 'UI/UX Design'),
                SkillItem(skill: 'JavaScript'),
                SkillItem(skill: 'React Native'),
                SkillItem(skill: 'Machine Learning'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
