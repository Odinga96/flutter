import 'package:flutter/material.dart';
import 'package:todo/components/my_botton.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  
   DialogBox({super.key, required this.controller, required this.onCancel, required this.onSave});

  VoidCallback onSave;
  VoidCallback onCancel;

  final controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Enter task'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                MyButton(name: 'Cancel', onPressed: onCancel),
                MyButton(name: 'Save', onPressed: onSave,)
              ],
            )
          ],
        ),
      ),
    );
  }
}