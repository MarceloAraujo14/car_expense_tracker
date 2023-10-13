import 'package:car_maintenance/expenses/box_container.dart';
import 'package:flutter/material.dart';

class ExpensesGraph extends StatefulWidget {
  const ExpensesGraph({super.key});

  @override
  State<ExpensesGraph> createState() => _ExpensesGraph();
}

class _ExpensesGraph extends State<ExpensesGraph> {
  @override
  Widget build(BuildContext context) {
    return const BoxContainer(
      height: 200,
      content: Text('Graficos'),
    );
  }
}
