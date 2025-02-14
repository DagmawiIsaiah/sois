import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateProviders with ChangeNotifier {
  bool _showWelcomeCard = false;
  bool _showCreateTag = false;
  bool _showCreateTask = false;
  bool _showCreateReminder = false;

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
    _showWelcomeCard = !(prefs.getBool('hasSeenWelcomeCard') ?? false);
    notifyListeners();
  }

  Future<void> _loadCreateTagState() async {
    final prefs = await SharedPreferences.getInstance();
    _showCreateTag = !(prefs.getBool('hasCreatedTag') ?? false);
    notifyListeners();
  }

  Future<void> _loadCreateTaskState() async {
    final prefs = await SharedPreferences.getInstance();
    _showCreateTask = !(prefs.getBool('hasCreatedTask') ?? false);
    notifyListeners();
  }

  Future<void> _loadCreateReminderState() async {
    final prefs = await SharedPreferences.getInstance();
    _showCreateReminder = !(prefs.getBool('hasCreatedReminder') ?? false);
    notifyListeners();
  }

  Future<void> dismissWelcomeCard() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasSeenWelcomeCard', true);
    _showWelcomeCard = false;
    notifyListeners();
  }

  Future<void> dismissCreateTag() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCreatedTag', true);
    _showCreateTag = false;
    notifyListeners();
  }

  Future<void> dismissCreateTask() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCreatedTask', true);
    _showCreateTask = false;
    notifyListeners();
  }

  Future<void> dismissCreateReminder() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCreatedReminder', true);
    _showCreateReminder = false;
    notifyListeners();
  }
}
