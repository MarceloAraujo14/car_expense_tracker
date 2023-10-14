import 'package:car_maintenance/expenses/models/expense.dart';
import 'package:car_maintenance/main.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatefulWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  State<ExpenseItem> createState() => _ExpenseContainer();
}

class _ExpenseContainer extends State<ExpenseItem> {
  @override
  Widget build(BuildContext context) {
    final amount = widget.expense.amount;
    final date = formatDate(widget.expense.date);
    final description = widget.expense.description;

    return Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                widget.expense.type.icon,
                color: primaryColor,
                size: 35,
              ),
              //
              const SizedBox(
                width: 20,
              ),
              //

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.monetization_on_outlined,
                              color: primaryColor,
                            ),
                            Text(
                              'R\$ ${amount.toStringAsFixed(2)}',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              color: primaryColor,
                            ),
                            Text(
                              date,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //
                    const SizedBox(
                      height: 10,
                    ),
                    //
                    Text(
                      description,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

String formatDate(DateTime date) {
  int day = date.day;
  int month = date.month;
  int year = date.year;
  return '$day/$month/$year';
}
