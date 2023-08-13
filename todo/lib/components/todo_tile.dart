import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/models/task.dart';

// ignore: must_be_immutable
class TodoItem extends StatelessWidget {

  final Task task;
  Function(bool?)? onChanged;
  Function(BuildContext) deleteTask;

   TodoItem({
    super.key, 
    required this.task, 
    required this.onChanged,
    required this.deleteTask
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
      child: Slidable(

        endActionPane: ActionPane(
          motion: const StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteTask,
              icon: Icons.delete,
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              padding: EdgeInsets.only(left: 10),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(8),
                topRight: Radius.circular(8)
                ),
              )
          ]
          ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 30, 24, 24),
            borderRadius: BorderRadius.circular(10)
            ),
            
          child: Row(
            children: [
              Checkbox(
                value: task.done, 
                onChanged: onChanged,
                ),
              Text(
                task.name, 
                style:  TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, .8),
                  decoration: task.done? TextDecoration.lineThrough: TextDecoration.none
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}