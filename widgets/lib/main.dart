import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
    theme: ThemeData.dark(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      backgroundColor: Color(0x777),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: ListView(
        children: <Widget>[
          TextField(
            autocorrect: true,
            autofocus: true,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    createRow("7","8","9"),
                    createRow("4","5","6"),
                    createRow("1","2","3"),
                    createRow(".","0","="),
                  ],
                ),
              ),
//              Expanded(child:
              Container(
                width: 80,
                child:  Column(
                  children: <Widget>[
                    createContainer("*", Colors.blue[500]),
                    createContainer("\u00F7", Colors.blue[500]),
                    createContainer("-", Colors.blue[500]),
                    createContainer("+", Colors.blue[500]),
                  ],

                )
                ),

//              )
            ],
          ),

        ],

      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
        backgroundColor: Colors.grey
      ),
    );
  }

  Row createRow(String first, String second, String third){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: createContainer(first,  Colors.orange[500])),
        Expanded(child: createContainer(second, Colors.orange[500])),
        Expanded(child: createContainer(third,  Colors.orange[500])),
      ],
    );
  }

  Container createContainer(String number, Color color){
    return Container(
      margin: EdgeInsets.all(1),
      height: 100.0,
      decoration: BoxDecoration(color: color),
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
