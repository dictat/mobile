import 'package:mobile/models/models.dart';

part 'message_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Message {
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
  Message(
      {required this.id,
      required this.senderId,
      required this.conversationId,
      required this.content,
      required this.type,
      required this.status,
      required this.attachments,
      required this.giftId,
      required this.replyTo,
      required this.readAt,
      required this.create_date,
      required this.update_date,
      required this.bookingId,
      required this.responseTime,
      required this.likedIds,
      required this.attachmentId,
      required this.booking,
      required this.sender});

  final int id;
  final int senderId; // 送り主
  final int conversationId; //ルームID
  final String content; // メッセージ
  final String type; // テキスト？画像？
  final String status; // new未読既読？
  @JsonKey(name: 'attachments')
  final Attachments attachments; //画像
  final int giftId;
  final String replyTo;
  final String readAt;
  final String create_date;
  final String update_date;
  final int bookingId;
  final int responseTime;
  final List<int> likedIds;
  final int attachmentId;
  final bool booking; // 予約配信的な？
  @JsonKey(name: 'sender')
  final User sender;
}
