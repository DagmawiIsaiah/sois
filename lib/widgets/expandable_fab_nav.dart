import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/utils.dart';
import '../router/router.dart';

class ExpandableFAB extends StatefulWidget {
  const ExpandableFAB({super.key});

  @override
  State<ExpandableFAB> createState() => _ExpandableFABState();
}

class _ExpandableFABState extends State<ExpandableFAB>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    // Rotation animation for the main FAB icon
    _rotateAnimation = Tween<double>(begin: 0, end: 0.25).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Additional FABs with slide-up animation
        if (_isExpanded) ...[
          FloatingActionButton(
            backgroundColor: AppTheme.neutral900,
            onPressed: () {
              _toggleExpansion;
              context.push(Paths.addTask);
              
            },
            child: Icon(FluentIcons.target_arrow_24_regular),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: AppTheme.neutral900,
            onPressed: () {
              context.push(Paths.addReminder);
              _toggleExpansion;
            },
            child: Icon(FluentIcons.note_24_regular),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: AppTheme.neutral900,
            onPressed: () {
              context.push(Paths.addTag);
              _toggleExpansion;
            },
            child: Icon(FluentIcons.tag_24_regular),
          ),
          SizedBox(height: 10),
        ],
        // Main FAB with rotation animation
        FloatingActionButton(
          onPressed: _toggleExpansion,
          child: RotationTransition(
            turns: _rotateAnimation,
            child: Icon(_isExpanded ? Icons.close : Icons.add),
          ),
        ),
      ],
    );
  }
}
