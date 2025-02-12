import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import '../utils/utils.dart';

class CustomNavigation extends StatelessWidget {
  final int currentScreenIndex;

  const CustomNavigation({
    super.key,
    required this.currentScreenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Report",
          style: AppTheme.lightTextTheme.titleLarge,
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/");
          },
          icon: Icon(
            (currentScreenIndex == 0)
                ? FluentIcons.data_bar_vertical_24_filled
                : FluentIcons.data_bar_vertical_24_regular,
            color: (currentScreenIndex == 0)
                ? AppTheme.primaryColor
                : AppTheme.neutral900,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/calendar");
          },
          icon: Icon(
            (currentScreenIndex == 1)
                ? FluentIcons.calendar_24_filled
                : FluentIcons.calendar_24_regular,
            color: (currentScreenIndex == 1)
                ? AppTheme.primaryColor
                : AppTheme.neutral900,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/reminder");
          },
          icon: Icon(
            (currentScreenIndex == 2)
                ? FluentIcons.note_24_filled
                : FluentIcons.note_24_regular,
            color: (currentScreenIndex == 2)
                ? AppTheme.primaryColor
                : AppTheme.neutral900,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/backup");
          },
          icon: Icon(
            (currentScreenIndex == 3)
                ? FluentIcons.arrow_sync_24_filled
                : FluentIcons.arrow_sync_24_regular,
            color: (currentScreenIndex == 3)
                ? AppTheme.primaryColor
                : AppTheme.neutral900,
          ),
        ),
      ],
    );
  }
}
