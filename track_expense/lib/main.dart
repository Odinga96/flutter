import 'package:flutter/material.dart';
import 'package:track_expense/screens/expense_report.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ExpenseReport(title: 'Expenses'),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
