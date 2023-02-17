// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityDetail _$CommunityDetailFromJson(Map<String, dynamic> json) =>
    CommunityDetail(
      id: json['id'] as int,
      communityId: json['communityId'] as int,
      userId: json['userId'] as int,
      content: json['content'] as String,
      image: json['image'] as String,
      create_date: json['create_date'] as String,
      update_date: json['update_date'] as String,
      title: json['title'] as String,
      deleted: json['deleted'] as bool,
      metadata: json['metadata'] as String,
      totalComments: json['totalComments'] as int,
      isfollowed: json['isfollowed'] as bool,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => Attachments.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommunityDetailToJson(CommunityDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'communityId': instance.communityId,
      'userId': instance.userId,
      'content': instance.content,
      'image': instance.image,
      'create_date': instance.create_date,
      'update_date': instance.update_date,
      'title': instance.title,
      'deleted': instance.deleted,
      'metadata': instance.metadata,
      'totalComments': instance.totalComments,
      'isfollowed': instance.isfollowed,
      'user': instance.user.toJson(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
    };
