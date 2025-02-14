import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:sois/utils/utils.dart';

import '../widgets/widgets.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05,
            ),
            child: Column(
              children: [
                CustomNavigation(currentScreenIndex: 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppTheme.space16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(FluentIcons.align_left_16_filled),
                          SizedBox(width: AppTheme.space8),
                          Text("Group"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(FluentIcons.filter_16_filled),
                          SizedBox(width: AppTheme.space8),
                          Text("Filter"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(FluentIcons.arrow_sort_16_filled),
                          SizedBox(width: AppTheme.space8),
                          Text("Sort"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(FluentIcons.calendar_16_filled),
                          SizedBox(width: AppTheme.space8),
                          Text("Duration"),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ReminderCard(noReminderYet: false, isClosed: false),
                    SizedBox(height: AppTheme.space8),
                    ReminderCard(noReminderYet: false, isClosed: true),
                    SizedBox(height: AppTheme.space8),
                    ReminderCard(noReminderYet: false, isClosed: true),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(FluentIcons.add_24_filled),
      // ),
      floatingActionButton: ExpandableFAB(),
    );
  }
}
