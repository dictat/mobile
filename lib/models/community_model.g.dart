// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Community _$CommunityFromJson(Map<String, dynamic> json) => Community(
      id: json['id'] as int,
      categoryId: json['categoryId'] as int,
      creatorId: json['creatorId'] as int,
      image: json['image'] as String,
      name: json['name'] as String,
      public: json['public'] as String,
      joinType: json['joinType'] as String,
      contentType: json['contentType'] as String,
      postPermission: json['postPermission'] as String,
      commentPermission: json['commentPermission'] as String,
      description: json['description'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String,
      deleted: json['deleted'] as bool,
      lastWeekRank: json['lastWeekRank'] as int,
      memberCount: json['memberCount'] as int,
      memberPendingCount: json['memberPendingCount'] as int,
      tweetCount: json['tweetCount'] as int,
      totalTweet: json['totalTweet'] as int,
      cateogry: Category.fromJson(json['cateogry'] as Map<String, dynamic>),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommunityToJson(Community instance) => <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'creatorId': instance.creatorId,
      'image': instance.image,
      'name': instance.name,
      'public': instance.public,
      'joinType': instance.joinType,
      'contentType': instance.contentType,
      'postPermission': instance.postPermission,
      'commentPermission': instance.commentPermission,
      'description': instance.description,
      'created': instance.created,
      'updated': instance.updated,
      'deleted': instance.deleted,
      'lastWeekRank': instance.lastWeekRank,
      'memberCount': instance.memberCount,
      'memberPendingCount': instance.memberPendingCount,
      'tweetCount': instance.tweetCount,
      'totalTweet': instance.totalTweet,
      'cateogry': instance.cateogry.toJson(),
      'creator': instance.creator.toJson(),
    };
