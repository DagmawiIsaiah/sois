import 'package:flutter/material.dart';

class Tag {
  final int id;
  final String label;
  final Color color;
  final String emojiPath;
  final int strickPerWeek;
  final int strickIndex;

  Tag({
    required this.id,
    required this.label,
    required this.color,
    required this.emojiPath,
    required this.strickPerWeek,
    required this.strickIndex,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      id: json['id'],
      label: json['label'],
      color: Color(json['color']),
      emojiPath: json['emojiPath'],
      strickPerWeek: json['strickPerWeek'],
      strickIndex: json['strickIndex'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "label": label,
      "strickPerWeek": strickPerWeek,
      "color": color,
      "emojiPath": emojiPath,
      "strickIndex": strickIndex,
    };
  }
}