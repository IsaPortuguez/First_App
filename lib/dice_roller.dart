import 'dart:math';

import 'package:flutter/material.dart';

//We create the Random function here, because we don't want to create and delete it every time when we click the buttom.
final randomizer = Random();

// An stateful widget, needs two classes to work.
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// The _ show that this class is private.
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  // setState reload the active UI with the new changes. Update it.
  void rollDice() {
    setState(() {
      //If you don't use the +1, it will give you a number between 0 and 5
      currentDiceRoll = randomizer.nextInt(6) + 1; // 1 to 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
