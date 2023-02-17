// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_timeline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeLineResponse _$TimeLineResponseFromJson(Map<String, dynamic> json) =>
    TimeLineResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => TimeLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      currentPage: json['currentPage'] as int,
      pageSize: json['pageSize'] as int,
    );

Map<String, dynamic> _$TimeLineResponseToJson(TimeLineResponse instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
    };
