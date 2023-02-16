import 'package:mobile/models/models.dart';

import '../function/import.dart';

@immutable
class TestUser {
  final int userId;
  final int id;
  final String title;
  final String body;
  final Attachment? atach;

  const TestUser(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      this.atach});

   TestUser copyWith({int? userId, int? id, String? title, String? body}) {
    return TestUser(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  TestUser.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        title = json['title'],
        body = json['body'],
        id = json['id'],
        atach = json['atach'];
}
