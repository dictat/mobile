
import 'package:mobile/models/models.dart';

import '../function/import.dart';
part 'testUser_model.g.dart';
@JsonSerializable()
class TestUser {
  const TestUser(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  final int userId;
  final int id;
  final String title;
  final String body;

   TestUser copyWith({int? userId, int? id, String? title, String? body}) {
    return TestUser(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  factory TestUser.fromJson(Map<String, dynamic> json) => _$TestUserFromJson(json);
  Map<String, dynamic> toJson() => _$TestUserToJson(this);

}
