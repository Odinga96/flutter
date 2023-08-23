import 'package:flutter/material.dart';
import 'package:track_expense/models/Expense.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox.expand(
            child: Text(expense.name),
          ),
          SizedBox(
            child: Text('$expense.cost'),
          )
        ],
      ),
    );
  }
}