// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as int,
      senderId: json['senderId'] as int,
      conversationId: json['conversationId'] as int,
      content: json['content'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      attachments:
          Attachments.fromJson(json['attachments'] as Map<String, dynamic>),
      giftId: json['giftId'] as int,
      replyTo: json['replyTo'] as String,
      readAt: json['readAt'] as String,
      create_date: json['create_date'] as String,
      update_date: json['update_date'] as String,
      bookingId: json['bookingId'] as int,
      responseTime: json['responseTime'] as int,
      likedIds:
          (json['likedIds'] as List<dynamic>).map((e) => e as int).toList(),
      attachmentId: json['attachmentId'] as int,
      booking: json['booking'] as bool,
      sender: User.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'conversationId': instance.conversationId,
      'content': instance.content,
      'type': instance.type,
      'status': instance.status,
      'attachments': instance.attachments.toJson(),
      'giftId': instance.giftId,
      'replyTo': instance.replyTo,
      'readAt': instance.readAt,
      'create_date': instance.create_date,
      'update_date': instance.update_date,
      'bookingId': instance.bookingId,
      'responseTime': instance.responseTime,
      'likedIds': instance.likedIds,
      'attachmentId': instance.attachmentId,
      'booking': instance.booking,
      'sender': instance.sender.toJson(),
    };
