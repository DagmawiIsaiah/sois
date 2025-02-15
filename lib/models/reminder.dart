class Reminder {
  int id;
  String note;
  bool isSeen;
  DateTime dateTime;

  Reminder({
    required this.id,
    required this.note,
    required this.isSeen,
    required this.dateTime,
  });

  factory Reminder.fromJson(Map<String, dynamic> json) {
    return Reminder(
      id: json["id"],
      note: json["note"],
      isSeen: json["isSeen"],
      dateTime: DateTime.parse(json["dateTime"]),
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "note": note,
      "isSeen": isSeen,
      "dateTime": dateTime.toIso8601String(),
    };
  }
}