import 'package:car_maintenance/expenses/data/expense_data.dart';
import 'package:car_maintenance/expenses/expenses_graph.dart';
import 'package:car_maintenance/expenses/expense_container.dart';
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
        const Column(
          children: [
            ExpensesGraph(),
            //
            ExpensesHistoryList(),
          ],
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

class ExpensesHistoryList extends StatelessWidget {
  const ExpensesHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: 350,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ...expenses.map(
                  (exp) => ExpenseContainer(expense: exp),
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
