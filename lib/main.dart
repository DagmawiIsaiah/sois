import 'package:flutter/material.dart';
import 'package:sois/screens/backup_screen.dart';
import '../screens/screens.dart';
import '../utils/utils.dart';

void main() {
  runApp(const SOIS());
}

class SOIS extends StatelessWidget {
  const SOIS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOIS',
      theme: AppTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        CalendarScreen.routeName: (context) => const CalendarScreen(),
        ReminderScreen.routeName: (context) => const ReminderScreen(),
        BackupScreen.routeName: (context) => const BackupScreen(),
        AddTaskScreen.routeName: (context) => const AddTaskScreen(),
        AddReminderScreen.routeName: (context) => const AddReminderScreen(),
        AddTagScreen.routeName: (context) => const AddTagScreen(),
      },
    );
  }
}
