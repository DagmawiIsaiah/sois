import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:sois/widgets/widgets.dart';

import '../utils/utils.dart';

class AddReminderScreen extends StatelessWidget {
  const AddReminderScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(FluentIcons.arrow_left_24_filled),
                    ),
                    Text(
                      "Add Reminder",
                      style: AppTheme.lightTextTheme.titleLarge,
                    ),
                  ],
                ),
                ReminderCard(
                  noReminderYet: false,
                  isClosed: false,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "what was the task?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppTheme.space4,
                      ),
                    ),
                  ),
                ),
                Text("when would you like to be reminded?"),
                CustomTimePicker(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add Task"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

