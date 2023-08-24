import 'package:flutter/material.dart';
import 'package:track_expense/models/Expense.dart';
import 'package:track_expense/utis/format.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child:  Container(
              color: Colors.black87,
              height: 30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  expense.name,
                  style: const TextStyle(
                    color: Colors.white70
                  ),
                  ),
              ),
            ),
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.amber,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(Format.formatValue(expense.cost, 'KES'))),
            )
          ],
        ),
      ),
    );
  }
}