import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.item});

  final Expense item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            children: [
              Text(item.title),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text('\$${item.amount.toStringAsFixed(2)}'),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[item.category]),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(item.formattedDate)
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
