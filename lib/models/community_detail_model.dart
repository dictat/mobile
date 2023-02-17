import 'package:mobile/models/models.dart';

part 'community_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CommunityDetail {
  factory CommunityDetail.fromJson(Map<String, dynamic> json) =>
      _$CommunityDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDetailToJson(this);

  CommunityDetail(
      {required this.id,
      required this.communityId,
      required this.userId,
      required this.content,
      required this.image,
      required this.create_date,
      required this.update_date,
      required this.title,
      required this.deleted,
      required this.metadata,
      required this.totalComments,
      required this.isfollowed,
      required this.user,
      required this.attachments});

  int id;
  int communityId;
  int userId;
  String content;
  String image;
  String create_date;
  String update_date;
  String title;
  bool deleted;
  String metadata;
  int totalComments;
  bool isfollowed;
  User user;
  @JsonKey(name: 'attachments')
  List<Attachments> attachments;
}
