import 'package:flutter/material.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreen();
}

class _AddExpenseScreen extends State<AddExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return const Card(child: Text('Add Expense'),);
  }
}
