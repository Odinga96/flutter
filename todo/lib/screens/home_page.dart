import 'package:flutter/material.dart';
import 'package:todo/components/dialog_box.dart';
import 'package:todo/components/float_action_btn.dart';
import 'package:todo/db/database.dart';
import 'package:todo/models/task.dart';

import '../components/todo_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Databse db = Databse();

  final _controller = TextEditingController();


  @override
  void initState() {
    db.init();
    super.initState();
  }
 
  
  //createTas
  void saveTask (){
    setState(() {
      db.tasks.add(Task(_controller.text, false));
      db.updateData();

      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask(int index) {
    setState(() {
      db.tasks.removeAt(index);
      db.updateData();
    });
  }

  //On tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
      db.tasks[index].done = !db.tasks[index].done;
      db.updateData();
    });
    
  }

  void _addTask() {
   showDialog(
    context: context, 
    builder: (context) {
      return DialogBox(
        controller: _controller,
        onCancel: () => Navigator.of(context).pop(),
        onSave: saveTask,
        );
  }
  );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 45, 44),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatActionBtn(onPressed: _addTask),
      body: ListView.builder(
        itemCount: db.tasks.length,
        itemBuilder: (context, index) {
          return TodoItem(
            task: db.tasks[index],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteTask: (value) => deleteTask(index),
          );
        },
        )
    );
  }
}