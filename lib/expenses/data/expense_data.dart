import 'package:car_maintenance/expenses/enum/expense_type.dart';
import 'package:car_maintenance/expenses/models/expense.dart';

final List<Expense> expenses = [
  Expense(
      id: 1,
      amount: 50.00,
      description: ExpenseType.fuel.description,
      date: DateTime.now(),
      type: ExpenseType.fuel),
  Expense(
      id: 2,
      amount: 20.00,
      description: ExpenseType.cleaning.description,
      date: DateTime.now(),
      type: ExpenseType.cleaning),
  Expense(
      id: 3,
      amount: 80.00,
      description: ExpenseType.accessories.description,
      date: DateTime.now(),
      type: ExpenseType.accessories),
];
