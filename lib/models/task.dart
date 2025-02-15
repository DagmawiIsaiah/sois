class Task {
  int id;
  String label;
  String description;
  int tagIndex;
  int strickIndex;
  DateTime dateTime;

  Task({
    required this.id,
    required this.label,
    required this.description,
    required this.tagIndex,
    required this.strickIndex,
    required this.dateTime,
  });
  
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json["id"],
      label: json["label"],
      description: json["description"],
      tagIndex: json["tagIndex"],
      strickIndex: json["strickIndex"],
      dateTime: DateTime.parse(json["dateTime"]),
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "label": label,
      "description": description,
      "tagIndex": tagIndex,
      "strickIndex": strickIndex,
      "dateTime": dateTime.toIso8601String(),
    };
  }
}