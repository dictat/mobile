// 顔のmodel
import 'package:mobile/models/models.dart';

part 'avatars_model.g.dart';

@JsonSerializable()
class Avatars {
  final int id;
  final int userId;
  final int? timelineId;
  final String url;
  final bool isDefault;
  final int sort;
  final String createDate;
  final String updateDate;
  final String blur;

  Avatars(
      {required this.id,
      required this.userId,
      this.timelineId,
      required this.sort,
      required this.url,
      required this.isDefault,
      required this.createDate,
      required this.updateDate,
      required this.blur});

  factory Avatars.fromJson(Map<String, dynamic> json) =>
      _$AvatarsFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarsToJson(this);
}
