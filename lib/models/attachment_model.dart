
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

  Attachment({
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

  Attachment.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        altText = json['altText'],
        link = json['link'],
        thumbnailUrl = json['thumbnailUrl'],
        height = json['height'],
        width = json['width'],
        type = json['type'],
        status = json['status'],
        creatorId = json['creatorId'],
        createDate = json['createDate'],
        updateDate = json['updateDate'],
        blur = json['blur'];
}
