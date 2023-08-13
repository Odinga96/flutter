import 'package:hive/hive.dart';

import '../models/task.dart';

class Databse {

  var _box = Hive.box("todo");
   
   List<Task> tasks=[];
   
    

  void init() {
    if(_box.get("todo") == null) {
      tasks = [
        Task("Eat Diner", true),
        Task("Take a walk", true),
        Task("Read a book", false)
      ];

     updateData();
    }else{
      _loadData();
    }
  }


  void _loadData(){
    var todo = _box.get("todo");
    
    tasks = convertToTask(todo);
    
  }

  void updateData() {
      _box.put("todo", _convertTaskToLiteral());
  }

   List<Map<String, dynamic>> _convertTaskToLiteral() {
     return tasks.map((task) {
      return {
       'name': task.name,
       'done': task.done,
     };
    }).toList();
   }

   List<Task> convertToTask(List<dynamic> todo){
    return todo.map((todo) {
      return Task(
        todo['name'],
        todo['done'],
      );
    }).toList();
   }


  
}