import 'dart:math';
import 'package:flutter/material.dart';

const List<String> imagePaths = [
  'assets/images/dice-1.png',
  'assets/images/dice-2.png',
  'assets/images/dice-3.png',
  'assets/images/dice-4.png',
  'assets/images/dice-5.png',
  'assets/images/dice-6.png',
];

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String _imagePath = imagePaths[0];

  void rollDice() {
    final random = Random();

    final randomIndex = random.nextInt(imagePaths.length);

    final randomImagePath = imagePaths[randomIndex];

    setState(() {
      _imagePath = randomImagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            _imagePath,
            width: 300,
            height: 300,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: rollDice,
          child: const Text(
            'Roll the Dice',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
