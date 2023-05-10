import 'dart:math';

import 'package:flutter/material.dart';

final randGen = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dice = 3;

  void switchDice() {
    setState(() {
      dice = randGen.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$dice.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: switchDice,
          child: const Text(
            'Roll DIce Here',
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
