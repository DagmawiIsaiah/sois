import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ReminderCard extends StatelessWidget {
  final bool noReminderYet;
  final bool isClosed;

  const ReminderCard({
    super.key,
    required this.noReminderYet,
    required this.isClosed,
  });

  factory ReminderCard.empty() {
    return ReminderCard(noReminderYet: true, isClosed: false);
  }

  @override
  Widget build(BuildContext context) {
    return (noReminderYet)
        ? Container(
            decoration: BoxDecoration(
              color: AppTheme.neutral100,
              borderRadius: BorderRadius.circular(AppTheme.space6),
            ),
            padding: EdgeInsets.symmetric(
              vertical: AppTheme.space16,
              horizontal: AppTheme.space24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/excited.png",
                      width: AppTheme.space24,
                    ),
                    Text(
                      "Any bright idea",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Text(
                  "Stilling waiting for good idea to struck? I’ll be waiting",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Chip(label: Text("Create New")),
              ],
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: AppTheme.neutral100,
              borderRadius: BorderRadius.circular(AppTheme.space6),
            ),
            padding: EdgeInsets.symmetric(
              vertical: AppTheme.space16,
              horizontal: AppTheme.space24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Learn more about crypto payment gateways and Nowpayments.",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        decoration:
                            (isClosed) ? TextDecoration.lineThrough : null,
                      ),
                ),
                Text("10:00 AM - 16min left"),
              ],
            ),
          );
  }
}