import 'package:flutter/material.dart';
import 'package:track_expense/components/expense_tile.dart';
import 'package:track_expense/components/totat_spent.dart';
import 'package:track_expense/db/db.dart';

class ExpenseReport extends StatefulWidget {
  const ExpenseReport({super.key, required this.title});
  final String title;

  @override
  State<ExpenseReport> createState() => _ExpenseReportState();
}



class _ExpenseReportState extends State<ExpenseReport> {
 Db db = Db();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 45, 44),
      // appBar: AppBar(title: Text(widget.title),),
      floatingActionButton: _creatFloatingActionButton(() => null),
      body: _createBody(),
    );
  }

  FloatingActionButton _creatFloatingActionButton(Function()? onPressed){
  return FloatingActionButton(
    onPressed: onPressed
    );
}

Widget _createBody(){
  return  Column(
    children: [
      TotalSpent(total: db.calculateCumulativeExpenses()),
      ListView.builder(
        shrinkWrap: true,
        itemCount: db.expenses.length,
        itemBuilder: (context, index) {
          return ExpenseTile(expense: db.expenses[index]);
        }, 
        )
    ],
  );
}
}