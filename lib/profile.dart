import 'package:appdev_flutter_training/skill.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.deepPurpleAccent,
            actions: [
              IconButton(
                icon: Icon(Icons.people),
                color: Colors.white,
                onPressed: () {
                  print('Settings clicked');
                },
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              spacing: 16,
              children: [
                Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Cookie Kokey',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                //SizedBox(height: 10),
                Text(
                    'Cookie is a lovable Australian pug. She is 8 months old and full of energy! When she isn'
                    't running around the backyard, she can usually be found snuggled up with her favorite human in the living room. Maggie loves playing with chew toys, playing fetch, and chasing the occasional squirrel around the yard. She loves to swim and will often take a dip in the pool for fun.',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                Skill(skill: "Sit properly"),
                Skill(skill: "Stay in place"),
                Skill(skill: "Poops in the right place"),
                Skill(skill: "Poops are not smelly"),
              ],
            ),
          ),
        ));
  }
}
