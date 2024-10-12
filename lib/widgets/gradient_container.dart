import 'dart:math';

import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;

const endAlignment = Alignment.bottomRight;

const List<String> imagePaths = [
  'assets/images/dice-1.png',
  'assets/images/dice-2.png',
  'assets/images/dice-3.png',
  'assets/images/dice-4.png',
  'assets/images/dice-5.png',
  'assets/images/dice-6.png',
];

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  String imagePath = imagePaths[0];

  void rollDice() {
    final random = Random();

    final randomIndex = random.nextInt(imagePaths.length);

    setState(() {
      imagePath = imagePaths[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.colors,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                imagePath,
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
        ));
  }
}
