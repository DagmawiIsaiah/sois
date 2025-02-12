import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SatisfactionLevel extends StatelessWidget {
  final bool isSelected;

  const SatisfactionLevel({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.space16,
        horizontal: AppTheme.space24,
      ),
      decoration: BoxDecoration(
        color: (isSelected)
            ? AppTheme.primaryColor.withAlpha(
                (255 * 0.1).toInt(),
              )
            : AppTheme.neutral100,
        border: Border.all(
          color: (isSelected) ? AppTheme.primaryColor : AppTheme.neutral300,
        ),
        borderRadius: BorderRadius.circular(AppTheme.space12),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/excited.png"),
          SizedBox(height: AppTheme.space8),
          Text(
            "Great",
            style: AppTheme.lightTextTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
