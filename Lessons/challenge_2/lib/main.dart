import 'package:flutter/material.dart';

void main() => runApp(MyApp());

double wid = 80;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: wid,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.yellow,
                        width: 80,
                        height: 80,
                      ),
                      Container(
                        color: Colors.green,
                        width: 80,
                        height: 80,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: wid,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
