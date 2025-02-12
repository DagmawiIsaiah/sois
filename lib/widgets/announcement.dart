import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import '../utils/utils.dart';

class Announcement extends StatelessWidget {
  final String? link;
  final String title;
  final String? emojiPath;
  final String? description;

  const Announcement({
    super.key,
    this.link,
    required this.title,
    this.emojiPath,
    this.description,
  });

  factory Announcement.welcome({
    required String title,
    required String emojiPath,
  }) {
    return Announcement(
      title: title,
      emojiPath: emojiPath,
    );
  }

  @override
  Widget build(BuildContext context) {
    return (link != null)
        ? Container(
            padding: EdgeInsets.symmetric(
              vertical: AppTheme.space16,
              horizontal: AppTheme.space24,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFFF1C2),
              borderRadius: BorderRadius.circular(AppTheme.space12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        FluentIcons.dismiss_20_filled,
                        color: AppTheme.neutral900,
                      ),
                    ),
                  ],
                ),
                Text(
                  description!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: AppTheme.space16),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Update Now"),
                  ),
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(
              vertical: AppTheme.space16,
              horizontal: AppTheme.space24,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFFF1C2),
              borderRadius: BorderRadius.circular(AppTheme.space12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(emojiPath!),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        FluentIcons.dismiss_20_filled,
                        color: AppTheme.neutral900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppTheme.space16),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          );
  }
}
