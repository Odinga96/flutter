
import 'package:flutter/material.dart';

void main() => runApp(Layout());

class Layout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "layout tutorial",
      home: appHome(),
    );
  }

  
  Scaffold appHome(){
    return Scaffold(
      appBar: applicationBar(),
      body: appBody(),
    );
  }

  AppBar applicationBar(){
    return AppBar(
      title: Text(
          "layout tutorial"
      ),
    );
  }

  ListView appBody(){
    return ListView(
      children: <Widget>[
        mainContent(),
      ],
    );
  }

  Column mainContent(){
    return Column(
      children: <Widget>[
        title(),
        introduction(),
        ratings(),
        iconsSet(),
      ],
    );
  }



  Column creatIconList(Icon icon, String text1, String text2){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        icon,
        Text('$text1'),
        Text('$text2'),
      ],
    );
  }



  Row ratings(){
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.star, color: Colors.green[500],),
            Icon(Icons.star, color: Colors.green[500],),
            Icon(Icons.star, color: Colors.green[500],),
            Icon(Icons.star, color: Colors.black,),
            Icon(Icons.star, color: Colors.black,),
          ],
        ),
        Text(
          '170 reviews',

        )

      ],
    );
  }



  Row introduction(){
    return       Row(children: <Widget>[
      Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            child: Text(
              'In a menu-driven interface, the set of options available to the user is displayed'
                  'the options are visible they are less demanding of the user, relying on recognition'
                  ' rather than recall. However, menu options still need to be meaningful and logic-'
                  'ally grouped to aid recognition. Often menus are hierarchically ordered and the'
                  'option required is not available at the top layer of the hierarchy',
              softWrap: true,
              textAlign: TextAlign.justify,
            ),
          )
      )
    ],
    );
  }



  Row title(){
    return  Row(
      children: <Widget>[
        Expanded(child: Text(
          "Strawberry PavLola",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, height: 2, letterSpacing: 0.5),
          textAlign: TextAlign.center,
        )

        )

      ],

    );
  }



  Row iconsSet(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: creatIconList(Icon(Icons.kitchen, color: Colors.green[500],), 'PREP', '25 Min')),
        Expanded(child: creatIconList(Icon(Icons.timer, color: Colors.green[500],), 'COOK', '1 hr')),
        Expanded(child: creatIconList(Icon(Icons.restaurant, color: Colors.green[500],), 'FEEDS', '4-6 days')),
      ],
    );
  }

}