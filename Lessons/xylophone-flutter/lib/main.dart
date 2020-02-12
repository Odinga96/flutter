import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonCreator(1, Colors.white),
              buttonCreator(2, Colors.black54),
              buttonCreator(3, Colors.orange),
              buttonCreator(4, Colors.green),
              buttonCreator(5, Colors.blue),
              buttonCreator(6, Colors.red),
              buttonCreator(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }

  FlatButton button(int soundNo, Color color) {
    return FlatButton(
      onPressed: () {
        final player = AudioCache();

        player.play('note$soundNo.wav');
      },
      child: Text(
        'B$soundNo',
      ),
      color: color,
    );
  }

  Expanded buttonCreator(int soundNo, Color color) {
    return Expanded(
      child: button(soundNo, color),
    );
  }
}
