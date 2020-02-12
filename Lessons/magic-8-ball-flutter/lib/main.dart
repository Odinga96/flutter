import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            title: Text('Ask any question'),
            backgroundColor: Colors.yellow.shade900,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNo = 1;

  void answer() {
    setState(() {
      ballNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNo.png'),
              onPressed: answer,
            ),
          ),
        ],
      ),
    );
  }
}
