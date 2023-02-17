// コミュニティーのmodel
import 'package:mobile/models/models.dart';

part 'community_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Community {
  int id;
  int categoryId;
  int creatorId;
  String image;
  String name;
  String public;
  String joinType;
  String contentType;
  String postPermission;
  String commentPermission;
  String description;
  String created;
  String updated;
  bool deleted;
  int lastWeekRank;
  int memberCount;
  int memberPendingCount;
  int tweetCount;
  int totalTweet;
  @JsonKey(name: 'cateogry')
  Category cateogry;
  @JsonKey(name: 'creator')
  User creator;

  Community({
    required this.id,
    required this.categoryId,
    required this.creatorId,
    required this.image,
    required this.name,
    required this.public,
    required this.joinType,
    required this.contentType,
    required this.postPermission,
    required this.commentPermission,
    required this.description,
    required this.created,
    required this.updated,
    required this.deleted,
    required this.lastWeekRank,
    required this.memberCount,
    required this.memberPendingCount,
    required this.tweetCount,
    required this.totalTweet,
    required this.cateogry,
    required this.creator,
  });

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityToJson(this);
}
