import 'package:flutter/material.dart';
import 'package:mobile/models/models.dart';

@immutable
class TimeLine {
  final int id;
  final int userId;
  final int? attachmentId;
  final String content;
  final String? lat;
  final String? lng;
  final String? locationName;
  final String? locationFullname;
  final String? locationCountry;
  final String createDate;
  final String updateDate;
  final List<int>? likedIds;
  final bool deleted;
  final String? metadata;
  final bool liked;
  final int totalComments;
  final Attachment? attachment;

  const TimeLine(
      {required this.id,
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
      this.attachment,
      this.locationName,
      this.locationFullname,
      this.locationCountry,
      required this.createDate,
      required this.updateDate});

  TimeLine copyWith({
    int? id,
    int? userId,
    int? attachmentId,
    String? content,
    String? lat,
    String? lng,
    String? locationName,
    String? locationFullname,
    String? locationCountry,
    String? createDate,
    String? updateDate,
    List<int>? likedIds,
    bool? deleted,
    String? metadata,
    bool? liked,
    int? totalComments,
    Attachment? attachment,
  }) {
    return TimeLine(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        content: content ?? this.content,
        liked: liked ?? this.liked,
        deleted: deleted ?? this.deleted,
        totalComments: totalComments ?? this.totalComments,
        createDate: createDate ?? this.createDate,
        updateDate: updateDate ?? this.updateDate);
  }
}
