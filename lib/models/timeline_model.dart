import 'package:mobile/models/models.dart';
class TimeLine {
  final int id;
  final int userId;
  final int? attachmentId;
  final String content;
  final String? lat;
  final String? lng;
  final String? location_name;
  final String? location_fullname;
  final String? location_country;
  final String create_date;
  final String update_date;
  final List<int>? likedIds;
  final bool deleted;
  final String? metadata;
  final bool liked;
  final int totalComments;
  final Attachment? attachment;

  TimeLine(
      this.id,
      this.userId,
      this.attachmentId,
      this.content,
      this.lat,
      this.lng,
      this.location_name,
      this.location_fullname,
      this.location_country,
      this.create_date,
      this.update_date,
      this.likedIds,
      this.deleted,
      this.metadata,
      this.liked,
      this.totalComments,
      this.attachment);
}
