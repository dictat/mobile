import 'package:flutter/material.dart';

class ProfileFunction {
  String getGenderName(String? name) {
    if (name == null) {
      return "";
    }
    return this.getSexualName(name);
  }

  String getSexualListName(List? lists) {
    List<String> tmp = [];
    if (lists == null) {
      return "";
    }
    for (final lis in lists) {
      tmp.add(this.getSexualName(lis));
    }
    return tmp.join('・');
  }

  String getSexualName(String name) {
    switch (name) {
      case "pansexual":
        return "パンセクシャル";
      case "aromantic":
        return "アロマンティック";
      case "female":
        return "女性";
      default:
        return "";
    }
  }
}
