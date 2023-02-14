import 'package:mobile/models/models.dart';

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

  User(
      this.id,
      this.avatar,
      this.username,
      this.gender,
      this.birthday,
      this.age,
      this.location,
      this.profile,
      this.isAvailable,
      this.status,
      this.isUser,
      this.introduction,
      this.unread,
      this.isPremium,
      this.isCheer,
      this.point,
      this.hometown,
      this.height,
      this.interest,
      this.education,
      this.marriageStatus,
      this.tabacco,
      this.sake,
      this.familyStatus,
      this.newUser,
      this.isAgeVerified,
      this.isSalaryVerified,
      this.isFootprintEnable,
      this.isPrivateMode,
      this.lastActivedAt,
      this.hobby,
      this.isPhoneVerified,
      this.frequentlyPlace,
      this.holiday,
      this.annualIncome,
      this.profession,
      this.resident,
      this.personalityType,
      this.tweet,
      this.lat,
      this.lng,
      this.dreamFuture,
      this.screenshotInLastMonth,
      this.premiumExp,
      this.cheerExp,
      this.deleted,
      this.referalCode,
      this.isPrivate,
      this.sexual,
      this.weight,
      this.child,
      this.lastReadFootprint,
      this.lastReadAction,
      this.isHiddenTweet,
      this.recruit,
      this.avatars,
      this.totalCheer,
      this.reportCount,
      this.liked,
      this.likedBack,
      this.matched,
      this.likes,
      this.createDate,
      this.updateDate, this.userNote);
}
