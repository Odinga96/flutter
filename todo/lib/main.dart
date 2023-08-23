import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/screens/home_page.dart';

import 'db/task_adapter.dart';

void main() async{
  await Hive.initFlutter();

  Hive.registerAdapter(TaskAdapter());

  await Hive.openBox('todo');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const MyHomePage(title: 'TODO'),
      theme:  ThemeData(primarySwatch:  Colors.orange),
    );
    
  }
}
