import 'package:mobile/models/models.dart';

part 'timeline_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TimeLine {
  int id;
  int userId;
  int? attachmentId;
  String content;
  String? lat;
  String? lng;
  String? locationName;
  String? locationFullname;
  String? locationCountry;
  String createDate;
  String updateDate;
  List<int>? likedIds;
  bool deleted;
  String? metadata;
  bool liked;
  int totalComments;
  @JsonKey(name: 'attachment') // @JsonKeyアノテーション：multi_select -> multiSelect
  List<Attachments> attachments;
  @JsonKey(name: 'user')
  User user;

  factory TimeLine.fromJson(Map<String, dynamic> json) =>
      _$TimeLineFromJson(json);

  Map<String, dynamic> toJson() => _$TimeLineToJson(this);

  TimeLine(
      {required this.id,
        required this.user,
      required this.userId,
      this.attachmentId,
      required this.content,
      this.lat,
      this.lng,
      this.likedIds,
      required this.deleted,
      this.metadata,
      required this.liked,
      required this.totalComments,
      required this.attachments,
      this.locationName,
      this.locationFullname,
      this.locationCountry,
      required this.createDate,
      required this.updateDate});
}
