// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachments _$AttachmentsFromJson(Map<String, dynamic> json) => Attachments(
      id: json['id'] as int,
      name: json['name'] as String,
      altText: json['altText'] as String,
      link: json['link'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      height: json['height'] as int?,
      width: json['width'] as int?,
      type: json['type'] as String,
      status: json['status'] as String,
      creatorId: json['creatorId'] as int,
      createDate: json['createDate'] as String,
      updateDate: json['updateDate'] as String,
      blur: json['blur'] as bool,
    );

Map<String, dynamic> _$AttachmentsToJson(Attachments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'altText': instance.altText,
      'link': instance.link,
      'thumbnailUrl': instance.thumbnailUrl,
      'height': instance.height,
      'width': instance.width,
      'type': instance.type,
      'status': instance.status,
      'creatorId': instance.creatorId,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'blur': instance.blur,
    };
