import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class AddTagScreen extends StatefulWidget {
  static const routeName = '/add-tag';

  const AddTagScreen({super.key});

  @override
  State<AddTagScreen> createState() => _AddTagScreenState();
}

class _AddTagScreenState extends State<AddTagScreen> {
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
                      "Add Tag",
                      style: AppTheme.lightTextTheme.titleLarge,
                    ),
                  ],
                ),
                Tag(noTagYet: false),
                Text("Select a tag color"),
                Wrap(
                  runSpacing: AppTheme.space8,
                  spacing: AppTheme.space8,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF34C759),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFCC00),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFAF52DE),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF00C7BE),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text("Custom Color"),
                      icon: Icon(
                        FluentIcons.color_24_filled,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Tag Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppTheme.space4,
                      ),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Strick goal per week",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppTheme.space4,
                      ),
                    ),
                  ),
                ),
                Text("Strick"),
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
                    child: Text("Add Tag"),
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
