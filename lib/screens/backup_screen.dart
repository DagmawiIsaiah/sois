import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:sois/utils/utils.dart';

import '../widgets/widgets.dart';

class BackupScreen extends StatelessWidget {
  static const routeName = '/backup';
  const BackupScreen({super.key});

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
              CustomNavigation(currentScreenIndex: 3),
              AspectRatio(
                aspectRatio: 5 / 6,
                child: Container(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: AppTheme.space24,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Automatic Backup"),
                        Text(
                          "This option allows will backup your data to your local storage every 24 hours",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppTheme.space12,
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(
                height: AppTheme.space24,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Automatic Backup"),
                        Text(
                          "This option allows will backup your data to your local storage every 24 hours",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppTheme.space12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(FluentIcons.document_arrow_down_16_filled),
                        SizedBox(
                          width: AppTheme.space8,
                        ),
                        Text("Export"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppTheme.space24,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Automatic Backup"),
                        Text(
                          "This option allows will backup your data to your local storage every 24 hours",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppTheme.space12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(FluentIcons.document_arrow_up_16_filled),
                        SizedBox(
                          width: AppTheme.space8,
                        ),
                        Text("Import"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
      floatingActionButton: ExpandableFAB(),
    );
  }
}
