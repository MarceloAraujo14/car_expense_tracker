import 'package:car_maintenance/expenses/data/expense_data.dart';
import 'package:car_maintenance/expenses/expenses_graph.dart';
import 'package:car_maintenance/expenses/history_list/expenses_list.dart';
import 'package:car_maintenance/main.dart';
import 'package:flutter/material.dart';

class ExpensesHistoryScreen extends StatefulWidget {
  const ExpensesHistoryScreen({super.key});

  @override
  State<ExpensesHistoryScreen> createState() => _ExpenseHistoryScreen();
}

class _ExpenseHistoryScreen extends State<ExpensesHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              const ExpensesGraph(),
              //
              Expanded(
                child: ExpensesHistoryList(
                  expensesList: expenses,
                ),
              ),
            ],
          ),
        ),
        IconButton.filled(
          onPressed: () {
            print('Add Expense');
          },
          icon: const Icon(
            Icons.add_circle_rounded,
            color: primaryColor,
          ),
          iconSize: 80,
        )
      ],
    );
  }
}
