import 'package:car_maintenance/expenses/box_container.dart';
import 'package:car_maintenance/expenses/data/expense_data.dart';
import 'package:car_maintenance/expenses/models/expense.dart';
import 'package:car_maintenance/main.dart';
import 'package:flutter/material.dart';

class ExpenseContainer extends StatefulWidget {
  const ExpenseContainer({super.key, required this.expense});

  final Expense expense;

  @override
  State<ExpenseContainer> createState() => _ExpenseContainer();
}

class _ExpenseContainer extends State<ExpenseContainer> {
  @override
  Widget build(BuildContext context) {
    final amount = widget.expense.amount;
    final date = formatDate(widget.expense.date);
    final description = widget.expense.description;

    return BoxContainer(
        height: 80,
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              widget.expense.type.icon,
              color: primaryColor,
              size: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            'R\$ $amount',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 117, 117, 117),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Row(children: [
                        const Icon(
                          Icons.calendar_month,
                          color: primaryColor,
                        ),
                        Text(
                          '$date',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 117, 117, 117),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ]),
                    ],
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

String formatDate(DateTime date) {
  int day = date.day;
  int month = date.month;
  int year = date.year;
  return '$day/$month/$year';
}
