import 'package:flutter/material.dart';
import 'package:dice_game/widgets/gradient_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(
        [Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)],
      ),
    );
  }
}
