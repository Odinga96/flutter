
import 'package:flutter/material.dart';

void main() => runApp(Layout());

class Layout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "layout tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "layout tutorial"
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: Text(
                      "Strawberry PavLola",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, height: 2, letterSpacing: 0.5),
                      textAlign: TextAlign.center,
                    ))

                  ],

                ),
                Row(children: <Widget>[
                  Expanded(child: Text(
                    'In a menu-driven interface, the set of options available to the user is displayed'
                  'the options are visible they are less demanding of the user, relying on recognition'
                     ' rather than recall. However, menu options still need to be meaningful and logic-'
                      'ally grouped to aid recognition. Often menus are hierarchically ordered and the'
                  'option required is not available at the top layer of the hierarchy',
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  )
                  )
                ],
                ),
                Row(
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: creatIconList(Icon(Icons.kitchen, color: Colors.green[500],), 'PREP', '25 Min')),
                    Expanded(child: creatIconList(Icon(Icons.timer, color: Colors.green[500],), 'COOK', '1 hr')),
                    Expanded(child: creatIconList(Icon(Icons.restaurant, color: Colors.green[500],), 'FEEDS', '4-6 days')),
                  ],
                )
              ],
            )


          ],
        ),
      ),
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

}