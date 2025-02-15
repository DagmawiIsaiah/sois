import 'package:flutter/material.dart';

import '../models/models.dart';

class TagProvider with ChangeNotifier {
  List<Tag> _tags = [];

  List<Tag> get tags => _tags;

  TagProvider() {
    // use app service to fetch tags from hive db
  }

  void addTag(Tag tag) {
    _tags.add(tag);
    // save tag to hive db
    notifyListeners();
  }

  void updateTag(Tag tag) {
    int index = _tags.indexWhere((t) => t.id == tag.id);
    if (index != -1) {
      _tags[index] = tag;
      // update tag in hive db
      notifyListeners();
    }
  }
}
