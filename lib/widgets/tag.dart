import 'package:flutter/material.dart';

import '../utils/utils.dart';

class Tag extends StatelessWidget {
  final bool noTagYet;

  const Tag({
    super.key,
    required this.noTagYet,
  });

  factory Tag.empty() => Tag(
        noTagYet: true,
      );

  factory Tag.emptyTask() => Tag(
        noTagYet: true,
      );

  factory Tag.task() => Tag(
        noTagYet: true,
      );

  @override
  Widget build(BuildContext context) {
    return (noTagYet)
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: AppTheme.space16,
              horizontal: AppTheme.space24,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppTheme.neutral300,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(AppTheme.space12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/excited.png",
                      width: 32,
                    ),
                    SizedBox(width: AppTheme.space12),
                    Text(
                      "No tag found",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Text(
                  "It seems that you haven’t created any tag",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Chip(
                  label: Text("Create New"),
                ),
              ],
            ),
          )
        : GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: AppTheme.space16,
                horizontal: AppTheme.space24,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.neutral300,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(AppTheme.space12),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/excited.png",
                    width: 48,
                  ),
                  SizedBox(width: AppTheme.space16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Work",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "5 Great Strick's per Week",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: AppTheme.primaryColor,
                  ),
                ],
              ),
            ),
          );
  }
}
