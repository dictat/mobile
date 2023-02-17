
import 'package:mobile/models/models.dart';
part 'attachment_model.g.dart';

@JsonSerializable(explicitToJson:true)
class Attachments {
  final int id;
  final String name;
  final String altText;
  final String link;
  final String thumbnailUrl;
  final int? height;
  final int? width;
  final String type;
  final String status;
  final int creatorId;
  final String createDate;
  final String updateDate;
  final bool blur;

  factory Attachments.fromJson(Map<String, dynamic> json) => _$AttachmentsFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentsToJson(this);

  Attachments({
      required this.id,
    required this.name,
    required this.altText,
    required this.link,
    required this.thumbnailUrl,
      this.height,
      this.width,
    required  this.type,
    required  this.status,
    required  this.creatorId,
    required  this.createDate,
    required  this.updateDate,
    required  this.blur});


}
