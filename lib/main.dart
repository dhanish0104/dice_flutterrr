import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.blueGrey[500],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Center(child: Text(
              "Dice",
              style: TextStyle(
                color: Colors.white,
              ),)),
            titleSpacing: 2.5,

          ),
          body: DiceApp(),
        )
    ),
  );
}
class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int randomDiceNumber = 1;
  int randomDiceNumber2 = 1;
  void ini() {
    randomDiceNumber = Random().nextInt(6)+1;
    randomDiceNumber2=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
          children: [
            Expanded(
              child: TextButton(

                onPressed: () {
                  setState(() {
                    ini();
                  });

                },
                child: Image(
                    image: AssetImage('images/dice$randomDiceNumber.png')),
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image(
                    image: AssetImage('images/dice$randomDiceNumber2.png')),
                onPressed: () {
                  setState(() {
                    ini();
                  });
                },
              ),
            ),
          ]
      ),
    );
  }
}





