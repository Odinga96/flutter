

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Flutter tutorials",
      home: TutorialsHome(),
    )
  );
}

class TutorialsHome extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    //creating a scaffold
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: "This is an icon",
        ),
        title: Text(
          "mitindo",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 15,

            ),
        ),
        backgroundColor: Colors.grey,

      ),
      body: Container(
        padding: EdgeInsets.all(10),

        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("1")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("2")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("3")
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("4")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("5")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("6")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
