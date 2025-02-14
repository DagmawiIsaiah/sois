import 'package:go_router/go_router.dart';

import '../screens/screens.dart';
import '../router/paths.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: Paths.home,
  routes: [
    GoRoute(
      path: Paths.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: Paths.calendar,
      builder: (context, state) => CalendarScreen(),
    ),
    GoRoute(
      path: Paths.reminder,
      builder: (context, state) => ReminderScreen(),
    ),
    GoRoute(
      path: Paths.backup,
      builder: (context, state) => BackupScreen(),
    ),
    GoRoute(
      path: Paths.addTask,
      builder: (context, state) => AddTaskScreen(),
    ),
    GoRoute(
      path: Paths.addReminder,
      builder: (context, state) => AddReminderScreen(),
    ),
    GoRoute(
      path: Paths.addTag,
      builder: (context, state) => AddTagScreen(),
    ),
  ],
);
