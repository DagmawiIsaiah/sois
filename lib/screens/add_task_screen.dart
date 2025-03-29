import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sois/widgets/widgets.dart';

import '../utils/utils.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
                        context.pop();
                      },
                      icon: Icon(FluentIcons.arrow_left_24_filled),
                    ),
                    Text(
                      "Add Task",
                      style: AppTheme.lightTextTheme.titleLarge,
                    ),
                  ],
                ),
                Tag(noTagYet: false),
                Text("Select a tag"),
                Wrap(
                  runSpacing: AppTheme.space8,
                  spacing: AppTheme.space8,
                  children: [
                    ChoiceChip(
                      label: Text("Work"),
                      selected: true,
                    ),
                    ChoiceChip(
                      label: Text("Exercise"),
                      selected: true,
                    ),
                    ChoiceChip(
                      label: Text("Study"),
                      selected: true,
                    ),
                  ],
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
                TextField(
                  decoration: InputDecoration(
                    labelText: "want to add a description?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppTheme.space4,
                      ),
                    ),
                  ),
                ),
                Text("what was it like"),
                Wrap(
                  children: [
                    SatisfactionLevel(isSelected: true),
                    SatisfactionLevel(isSelected: false),
                    SatisfactionLevel(isSelected: false),
                  ],
                ),
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
