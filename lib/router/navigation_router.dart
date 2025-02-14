import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/screens.dart';

class OnboardingHelper {
  static const String _keyHasSeenWelcomeCard = 'hasSeenWelcomeCard';
  static const String _keyHasCreatedTag = 'hasCreatedTag';
  static const String _keyHasCreatedTask = 'hasCreatedTask';
  static const String _keyHasCreatedReminder = 'hasCreatedReminder';

  /// Check if the user has seen the welcome card
  static Future<bool> hasSeenWelcomeCard() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyHasSeenWelcomeCard) ?? false;
  }

  /// Mark the welcome card as seen
  static Future<void> setWelcomeCardSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyHasSeenWelcomeCard, true);
  }

  /// Check if the user has created a tag
  static Future<bool> hasCreatedTag() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyHasCreatedTag) ?? false;
  }

  /// Mark the tag creation as done
  static Future<void> setTagCreated() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyHasCreatedTag, true);
  }

  /// Check if the user has created a task
  static Future<bool> hasCreatedTask() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyHasCreatedTask) ?? false;
  }

  /// Mark the task creation as done
  static Future<void> setTaskCreated() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyHasCreatedTask, true);
  }

  /// Check if the user has created a reminder
  static Future<bool> hasCreatedReminder() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyHasCreatedReminder) ?? false;
  }

  /// Mark the reminder creation as done
  static Future<void> setReminderCreated() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyHasCreatedReminder, true);
  }
}


// GoRouter configuration
final router = GoRouter(
  initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
    ],
);