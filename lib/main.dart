import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('DICE'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.red,
        body: const DiceAPP(),
      ),
    ),
  );
}

class DiceAPP extends StatefulWidget {
  const DiceAPP({Key? key}) : super(key: key);

  @override
  State<DiceAPP> createState() => _DiceAPPState();
}

class _DiceAPPState extends State<DiceAPP> {
  int leftDice = 1;
  int rightDice = 1;
  void changeDice()
  {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset(
                'images/dice$leftDice.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}


