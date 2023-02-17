// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatars_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatars _$AvatarsFromJson(Map<String, dynamic> json) => Avatars(
      id: json['id'] as int,
      userId: json['userId'] as int,
      timelineId: json['timelineId'] as int?,
      sort: json['sort'] as int,
      url: json['url'] as String,
      isDefault: json['isDefault'] as bool,
      createDate: json['createDate'] as String,
      updateDate: json['updateDate'] as String,
      blur: json['blur'] as String,
    );

Map<String, dynamic> _$AvatarsToJson(Avatars instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'timelineId': instance.timelineId,
      'url': instance.url,
      'isDefault': instance.isDefault,
      'sort': instance.sort,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'blur': instance.blur,
    };
