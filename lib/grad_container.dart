import 'package:flutter/material.dart';
import 'package:sam2/roll_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo, Colors.green],
          begin: Alignment.topCenter,
          end: Alignment.topRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
