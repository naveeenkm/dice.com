import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller(this.home, {super.key});
  final void Function() home;
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 500,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: constEdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 23,
              )),
          child: const Text('Roll dice'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: widget.home,
          style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 243, 3, 3),
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text('End the Game'),
        ),
      ],
    );
  }
}
