import 'package:car_maintenance/expenses/enum/expense_type.dart';

class Expense {
  final int id;
  double amount;
  String description;
  DateTime date;
  ExpenseType type;

  Expense({
    required this.id,
    required this.amount,
    required this.date,
    required this.type,
    required this.description
  });
}