import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("The rich man"),
      backgroundColor: Colors.deepOrange,
    ),
    body: Center(
      child: Image(
//        image: NetworkImage('https://i.ytimg.com/vi/OMZXhmvxmq0/sddefault.jpg'),
        image: AssetImage('images/polished-diamond.png'),
      ),
    ),
    backgroundColor: Colors.blueGrey[900],
  )));
}
