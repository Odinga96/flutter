// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  Widget titleSection= Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oschein Lake Compound',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Swizerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

//  Color color= ;
  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
        _buildButtonColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),

      ],
    ),
  );


  Widget textSection = Container(
    padding: EdgeInsets.all(32),
    child: Text(
        "Obstacles"
     " Efficient capital to ensure this project is completed on time and on budget is definitely going to be"
    " an obstacle. Lack of ready information is also going to slow down the process of building the"
   " system. This is because if there ready information for clubs in form of API s it would have made the"
   " development process faster as there would be no need to develop a web portal for clubs but rather"
   " just pull the data right from there database. This could also be an obstacle as it might take a lot of"
   " time to get the clubs to agree to a request of getting this data from them. Moreover if we were to use"
   " an the API to develop the system, there would be need for uniformity. This would be close to"
    "  impossible as most clubs would be using different systems to manage their data."
           ,

            softWrap: true,
      textAlign: TextAlign.justify,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout lessons'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  static Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

