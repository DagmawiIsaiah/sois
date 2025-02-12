import 'package:flutter/material.dart';

import '../utils/utils.dart';

class DailyReportCard extends StatelessWidget {
  const DailyReportCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.space16,
        horizontal: AppTheme.space16,
      ),
      decoration: BoxDecoration(
        color: AppTheme.neutral100,
        borderRadius: BorderRadius.circular(AppTheme.space12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/excited.png"),
          Text(
            "Duck it’s time to check weekly report and plan the next week.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Explor Report"),
            ),
          ),
        ],
      ),
    );
  }
}
