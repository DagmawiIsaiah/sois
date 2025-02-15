class Strick {
  int id;
  String label;
  String emojiPath;

  Strick({
    required this.id,
    required this.label,
    required this.emojiPath,
  });
  
  factory Strick.fromJson(Map<String, dynamic> json) {
    return Strick(
      id: json["id"],
      label: json["label"],
      emojiPath: json["emojiPath"],
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "label": label,
      "emojiPath": emojiPath,
    };
  }
}