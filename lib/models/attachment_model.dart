import 'package:mobile/models/models.dart';
class Attachment {
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
  final String create_date;
  final String update_date;
  final bool blur;

  Attachment(
      this.id,
      this.name,
      this.altText,
      this.link,
      this.thumbnailUrl,
      this.height,
      this.width,
      this.type,
      this.status,
      this.creatorId,
      this.create_date,
      this.update_date,
      this.blur);
}
