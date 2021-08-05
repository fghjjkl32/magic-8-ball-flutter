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
  // const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset("images/ball1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
