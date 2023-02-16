// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testUser_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestUser _$TestUserFromJson(Map<String, dynamic> json) => TestUser(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$TestUserToJson(TestUser instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
