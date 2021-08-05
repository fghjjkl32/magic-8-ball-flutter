import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BallHome());
}

class BallHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me AnyThing'),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

int ballNumber = 1;

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
                print("I got clicked $ballNumber");
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
