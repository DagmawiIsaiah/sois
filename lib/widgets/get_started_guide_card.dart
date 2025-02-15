import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sois/providers/app_state_providers.dart';

import '../router/router.dart';
import '../utils/utils.dart';

class GetStartedGuideCard extends StatelessWidget {
  final int index;
  final String description;
  final String buttonText;
  const GetStartedGuideCard({
    super.key,
    required this.index,
    required this.description,
    required this.buttonText,
  });

  factory GetStartedGuideCard.step1() {
    return GetStartedGuideCard(
      index: 1,
      description:
          "Create task tag with Strick goal. or tap on default tags to customize them",
      buttonText: "Create Tag",
    );
  }

  factory GetStartedGuideCard.step2() {
    return GetStartedGuideCard(
      index: 2,
      description:
          "Add new task you have completed with a tag of satisfaction level to review for later",
      buttonText: "Add Task",
    );
  }

  factory GetStartedGuideCard.step3() {
    return GetStartedGuideCard(
      index: 3,
      description:
          "Have amazing ideas to write down for later set a quick reminder with notification time",
      buttonText: "Create Reminder",
    );
  }

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
            "$index of 3",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Consumer<AppStateProviders>(
              builder: (BuildContext context, appStateProvider, Widget? child) {
                return ElevatedButton(
                  onPressed: () {
                    if (index == 1) {
                      context.go(Paths.addTag);
                      appStateProvider.dismissCreateTag();
                    }
                    if (index == 2) {
                      context.go(Paths.addTask);
                      appStateProvider.dismissCreateTask();
                    }
                    if (index == 3) {
                      context.go(Paths.addReminder);
                      appStateProvider.dismissCreateReminder();
                    }
                  },
                  child: Text(buttonText),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
