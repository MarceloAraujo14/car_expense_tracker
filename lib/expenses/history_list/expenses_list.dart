import 'package:car_maintenance/expenses/history_list/expense_item.dart';
import 'package:car_maintenance/expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesHistoryList extends StatelessWidget {
  const ExpensesHistoryList({super.key, required this.expensesList});

  final List<Expense> expensesList;

  @override
  Widget build(BuildContext context) {
    return 
    ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => ExpenseItem(expense: expensesList[index]),
    );
  }
}
