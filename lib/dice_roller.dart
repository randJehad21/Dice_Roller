// we want to create random number to switch diceroller
import 'dart:math';
import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  // we don't add build method
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoller = 2;

  void rollDice() {
    // we will call method to re-execute build and change pic
    setState(() {
      //this is good but not optimal so we can define random finaL AT beignig
      currentDiceRoller = randomize.nextInt(6) + 1; // between 1 and 6
      //since all my photo only diff in # I will assign value to number
    });
  }

  @override
  Widget build(context) {
    //the colom in the gradient class because of stateful
    return
        // I want to hold multi images so we used colum() widget
        Column(
      // to make sure not take the whole center column
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoller.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            //anomyous function (){}
            onPressed: rollDice,
            style: TextButton.styleFrom(
                //   padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20.0)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
