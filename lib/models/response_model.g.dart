// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestUserResponse _$TestUserResponseFromJson(Map<String, dynamic> json) =>
    TestUserResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => TestUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      currentPage: json['currentPage'] as int,
      pageSize: json['pageSize'] as int,
    );

Map<String, dynamic> _$TestUserResponseToJson(TestUserResponse instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
    };
