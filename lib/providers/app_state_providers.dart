import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateProviders with ChangeNotifier {
  bool _showWelcomeCard = true;
  bool _showCreateTag = true;
  bool _showCreateTask = true;
  bool _showCreateReminder = true;

  bool get showWelcomeCard => _showWelcomeCard;
  bool get showCreateTag => _showCreateTag;
  bool get showCreateTask => _showCreateTask;
  bool get showCreateReminder => _showCreateReminder;

  AppStateProviders() {
    _loadWelcomeCardState();
    _loadCreateTagState();
    _loadCreateTaskState();
    _loadCreateReminderState();
  }

  Future<void> _loadWelcomeCardState() async {
    final prefs = await SharedPreferences.getInstance();
    _showWelcomeCard = !(prefs.getBool('hasSeenWelcomeCard') ?? true);
    notifyListeners();
  }

  Future<void> _loadCreateTagState() async {
    final prefs = await SharedPreferences.getInstance();
    _showCreateTag = !(prefs.getBool('hasCreatedTag') ?? true);
    notifyListeners();
  }

  Future<void> _loadCreateTaskState() async {
    final prefs = await SharedPreferences.getInstance();
    _showCreateTask = !(prefs.getBool('hasCreatedTask') ?? true);
    notifyListeners();
  }

  Future<void> _loadCreateReminderState() async {
    final prefs = await SharedPreferences.getInstance();
    _showCreateReminder = !(prefs.getBool('hasCreatedReminder') ?? true);
    notifyListeners();
  }

  Future<void> dismissWelcomeCard() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasSeenWelcomeCard', false);
    _showWelcomeCard = false;
    notifyListeners();
  }

  Future<void> dismissCreateTag() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCreatedTag', false);
    _showCreateTag = false;
    notifyListeners();
  }

  Future<void> dismissCreateTask() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCreatedTask', false);
    _showCreateTask = false;
    notifyListeners();
  }

  Future<void> dismissCreateReminder() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCreatedReminder', false);
    _showCreateReminder = false;
    notifyListeners();
  }

  Future<void> resetAppState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    _showWelcomeCard = true;
    _showCreateTag = true;
    _showCreateTask = true;
    _showCreateReminder = true;
    notifyListeners();
  }
}
