
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
  final String createDate;
  final String updateDate;
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
      this.createDate,
      this.updateDate,
      this.blur);
}
