import 'package:car_maintenance/expenses/box_container.dart';
import 'package:flutter/material.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreen();
}

class _AddExpenseScreen extends State<AddExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return const BoxContainer(
      height: 300,
      content: 
      Column(
        children: [
          Row(children: [],),
          Row(children: [],),
          Row(children: [],),
          Row(children: [],),
        ]),
    );
  }
}
