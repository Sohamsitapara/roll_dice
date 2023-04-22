import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
final randomizer1=Random();

class DiceRoller extends StatefulWidget {
const DiceRoller({super.key});

@override
State<DiceRoller> createState() {
  return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll=1;
  var currentDiceRollnew=1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
      currentDiceRollnew = randomizer1.nextInt(6)+1;
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
          const SizedBox(height: 20,),
          Image.asset(
            'assets/new_images/dice-$currentDiceRollnew.png',
            width: 200,
          ),
          //const SizedBox(height: 20,), same work like padding for spacing between image nd button
          TextButton(onPressed: rollDice,
           style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: const Color.fromARGB(109, 2, 34, 130),
            textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
            )
            ),
           child: const Text('Roll Dice'))
        ]);
  }
}