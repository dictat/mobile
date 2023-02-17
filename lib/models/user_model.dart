import 'package:mobile/models/models.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  int id;
  String? avatar; // URL
  String username; // 表示させる名前
  String gender; // 性別
  String birthday; // 生年月日
  int age; // 年齢
  String? location; // いる場所？
  String profile; // プロフィール
  bool isAvailable; // BAN？
  String status; // 状態？
  bool isUser; // ユーザ？管理者？
  String introduction; // プロフィール２
  int unread; // 通知数
  bool isPremium; // 有料会員？
  bool isCheer; // 応援会員？
  int point; // ポイント　特に使いみちない。
  String hometown; // 出身地
  int height; // 身長
  String interest; // 興味ある人
  String education; // 学歴
  String marriageStatus; // 結婚願望
  String tabacco; // タバコ
  String sake; // アルコール
  String familyStatus; // 兄弟とか
  bool newUser; // 最近登録した
  bool isAgeVerified; // 年齢確認済み
  bool isSalaryVerified; // 収入証明
  bool isFootprintEnable; // 足跡をつける。
  bool isPrivateMode; // ログインを隠す？
  String lastActivedAt; // 最終ログイン
  String createDate; // ユーザ作成日
  String updateDate; // 更新日
  String hobby; // 趣味
  bool isPhoneVerified; // 電話番号認証
  String frequentlyPlace; // よくいる場所
  String holiday; // おやすみの日
  String annualIncome; // 年収
  String profession; // 職業
  String resident; // 都道府県
  String personalityType; // 性格
  String tweet; //ツイート？
  String? lat; // 井戸
  String? lng; // 敬意
  String dreamFuture; // 将来の夢
  int screenshotInLastMonth; // スクリーンショット回数
  String premiumExp; // 有料会員期限
  String cheerExp; // 応援会員期限
  bool deleted;
  String referalCode; // 紹介コード
  bool isPrivate; // プライベートモード
  List<String> sexual; // せくシャリてぃー
  int weight; // 体重
  String child; // 子供は欲しいか
  String lastReadFootprint; // 最終足跡
  String lastReadAction; // 最終アクション
  bool isHiddenTweet; // つぶやきの非公開
  String recruit; // 募集相手
  @JsonKey(name: 'avatars')
  List<Avatars> avatars; // プロフィール画像情報
  String totalCheer; // 応援回数
  String reportCount; // 通報回数
  bool liked; // いいねを押した
  bool likedBack; // いいねをもらった
  bool matched; // マッチ中
  String userNote; // ユーザメモ
  int likes; // いいねの数

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User(
      {required this.id,
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
      required this.updateDate,
      required this.userNote});
}
