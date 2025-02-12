import 'package:flutter/material.dart';

import '../utils/utils.dart';

class GetStartedGuideCard extends StatelessWidget {
  const GetStartedGuideCard({
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
          Text(
            "1 of 3",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "Create task tag with Strick goal. or tap on default tags to customize them",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Create Tag"),
            ),
          ),
        ],
      ),
    );
  }
}
