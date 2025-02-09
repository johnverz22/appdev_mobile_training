import 'dart:math';

import 'package:flutter/material.dart';

class DiceRollApp extends StatefulWidget {
  const DiceRollApp({super.key});

  @override
  _DiceRollAppState createState() => _DiceRollAppState();
}

class _DiceRollAppState extends State<DiceRollApp> {
  // List to store dice images
  final List<String> diceImages = [
    'assets/images/dice1.png',
    'assets/images/dice2.png',
    'assets/images/dice3.png',
    'assets/images/dice4.png',
    'assets/images/dice5.png',
    'assets/images/dice6.png'
  ];

  // Default dice image
  String currentDiceImage = 'assets/images/dice1.png';

  // Method to roll the dice
  void rollDice() {
    final randomNumber =
        Random().nextInt(6); // Get a random number between 0 and 5
    setState(() {
      currentDiceImage = diceImages[
          randomNumber]; // Set the new dice image based on the random number
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roll App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: GestureDetector(
            onTap: rollDice, // Roll the dice when the user taps on the image
            child: Image.asset(
              currentDiceImage, // Display the current dice image
              width: 200.0, // Set the size of the dice image
              height: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}
