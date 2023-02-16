import 'package:mobile/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {

  final int id;
  final String? avatar; // URL
  final String username; // 表示させる名前
  final String gender; // 性別
  final String birthday; // 生年月日
  final int age; // 年齢
  final String? location; // いる場所？
  final String profile; // プロフィール
  final bool isAvailable; // BAN？
  final String status; // 状態？
  final bool isUser; // ユーザ？管理者？
  final String introduction; // プロフィール２
  final int unread; // 通知数
  final bool isPremium; // 有料会員？
  final bool isCheer; // 応援会員？
  final int point; // ポイント　特に使いみちない。
  final String hometown; // 出身地
  final int height; // 身長
  final String interest; // 興味ある人
  final String education; // 学歴
  final String marriageStatus; // 結婚願望
  final String tabacco; // タバコ
  final String sake; // アルコール
  final String familyStatus; // 兄弟とか
  final bool newUser; // 最近登録した
  final bool isAgeVerified; // 年齢確認済み
  final bool isSalaryVerified; // 収入証明
  final bool isFootprintEnable; // 足跡をつける。
  final bool isPrivateMode; // ログインを隠す？
  final String lastActivedAt; // 最終ログイン
  final String createDate; // ユーザ作成日
  final String updateDate; // 更新日
  final String hobby; // 趣味
  final bool isPhoneVerified; // 電話番号認証
  final String frequentlyPlace; // よくいる場所
  final String holiday; // おやすみの日
  final String annualIncome; // 年収
  final String profession; // 職業
  final String resident; // 都道府県
  final String personalityType; // 性格
  final String tweet; //ツイート？
  final String? lat; // 井戸
  final String? lng; // 敬意
  final String dreamFuture; // 将来の夢
  final int screenshotInLastMonth; // スクリーンショット回数
  final String premiumExp; // 有料会員期限
  final String cheerExp; // 応援会員期限
  final bool deleted;
  final String referalCode; // 紹介コード
  final bool isPrivate; // プライベートモード
  final List<String> sexual; // せくシャリてぃー
  final int weight; // 体重
  final String child; // 子供は欲しいか
  final String lastReadFootprint; // 最終足跡
  final String lastReadAction; // 最終アクション
  final bool isHiddenTweet; // つぶやきの非公開
  final String recruit; // 募集相手
  final List<Avatars> avatars; // プロフィール画像情報
  final String totalCheer; // 応援回数
  final String reportCount; // 通報回数
  final bool liked; // いいねを押した
  final bool likedBack; // いいねをもらった
  final bool matched; // マッチ中
  final String userNote; // ユーザメモ
  final int likes; // いいねの数

  User({
      required this.id,
      required this.avatar,
      required this.username,
      required this.gender,
      required this.birthday,
      required this.age,
      required this.location,
      required this.profile,
      required this.isAvailable,
      required this.status,
      required this.isUser,
      required this.introduction,
      required this.unread,
      required this.isPremium,
      required this.isCheer,
      required this.point,
      required this.hometown,
      required this.height,
      required this.interest,
      required this.education,
      required this.marriageStatus,
      required this.tabacco,
      required this.sake,
      required this.familyStatus,
      required this.newUser,
      required this.isAgeVerified,
      required this.isSalaryVerified,
      required this.isFootprintEnable,
      required this.isPrivateMode,
      required this.lastActivedAt,
      required this.hobby,
      required this.isPhoneVerified,
      required this.frequentlyPlace,
      required this.holiday,
      required this.annualIncome,
      required this.profession,
      required this.resident,
      required this.personalityType,
      required this.tweet,
      required this.lat,
      required this.lng,
      required this.dreamFuture,
      required this.screenshotInLastMonth,
      required this.premiumExp,
      required this.cheerExp,
      required this.deleted,
      required this.referalCode,
      required this.isPrivate,
      required this.sexual,
      required this.weight,
      required this.child,
      required this.lastReadFootprint,
      required this.lastReadAction,
      required this.isHiddenTweet,
      required this.recruit,
      required this.avatars,
      required this.totalCheer,
      required this.reportCount,
      required this.liked,
      required this.likedBack,
      required this.matched,
      required this.likes,
      required this.createDate,
      required this.updateDate, required this.userNote});


}
