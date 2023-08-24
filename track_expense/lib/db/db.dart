import 'package:track_expense/models/Expense.dart';

class Db {

List<Expense> expenses=[
  Expense('Expense', 500000.15, '2023'),
  Expense('Expense2', 1000000.00, '2023'),
];

  double calculateCumulativeExpenses() {
     return expenses.fold(0, (double sum, expense) => sum + expense.cost);
   }

   void addExpose(Expense expense){
    expenses.add(expense);
   }

   void removeExpense(int index){
    expenses.remove(index);
   }
  
}