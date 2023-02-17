// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeLine _$TimeLineFromJson(Map<String, dynamic> json) => TimeLine(
      id: json['id'] as int,
      userId: json['userId'] as int,
      attachmentId: json['attachmentId'] as int?,
      content: json['content'] as String,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      likedIds:
          (json['likedIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      deleted: json['deleted'] as bool,
      metadata: json['metadata'] as String?,
      liked: json['liked'] as bool,
      totalComments: json['totalComments'] as int,
      attachments: (json['attachment'] as List<dynamic>)
          .map((e) => Attachments.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationName: json['locationName'] as String?,
      locationFullname: json['locationFullname'] as String?,
      locationCountry: json['locationCountry'] as String?,
      createDate: json['createDate'] as String,
      updateDate: json['updateDate'] as String,
    );

Map<String, dynamic> _$TimeLineToJson(TimeLine instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'attachmentId': instance.attachmentId,
      'content': instance.content,
      'lat': instance.lat,
      'lng': instance.lng,
      'locationName': instance.locationName,
      'locationFullname': instance.locationFullname,
      'locationCountry': instance.locationCountry,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'likedIds': instance.likedIds,
      'deleted': instance.deleted,
      'metadata': instance.metadata,
      'liked': instance.liked,
      'totalComments': instance.totalComments,
      'attachment': instance.attachments.map((e) => e.toJson()).toList(),
    };
