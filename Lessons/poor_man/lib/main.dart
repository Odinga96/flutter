import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      appBar: AppBar(
        title: Center(child: Text('The poor man')),
        backgroundColor: Colors.green.shade500,
      ),
      body: Center(
        child: Image(image: AssetImage('images/poor7.jpg')),
      ),
    ),
  ));
}
