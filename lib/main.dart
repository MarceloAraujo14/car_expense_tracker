import 'package:car_maintenance/expenses/history_list/exp_history_screen.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFF41B8D5);
const secondaryColor = Color(0xFF6CE5E8);
const backgroundColor = Colors.white;
const cardColor = Color.fromARGB(255, 250, 250, 250);

void main() {
  runApp(const MaterialApp(
    home: MainHome(),
  ));
}

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Expenses'),
        backgroundColor: primaryColor,
      ),
      backgroundColor: backgroundColor,
      body: Container(
          padding: const EdgeInsets.all(20),
          child: const ExpensesHistoryScreen()),
    );
  }
}
