import 'package:mobile/models/models.dart';

class Profile {
  final String title;
  final String subTitle;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final String imagePath4;
  final String imagePath5;

  final int id;
  final String? avatar;
  final String username;
  final String? email;
  final String? fullName;
  final String? gender;
  final String? birthday;

  final String? resident;
  final List? sexual;
  final String nickname;

  Profile({
    required String this.title,
    required String this.subTitle,
    required String this.imagePath1,
    required String this.imagePath2,
    required String this.imagePath3,
    required String this.imagePath4,
    required String this.imagePath5,
    required this.id,
    this.avatar,
    required this.username,
    this.email,
    this.fullName,
    this.gender,
    this.birthday,
    this.resident,
    this.sexual,
    required this.nickname,
  });

  static Profile profile = Profile(
    id: 1,
    username: "セゾンユーズ",
    title: "ここに名前が入る",
    subTitle: "サブタイトル",
    birthday: "2001-01-01",
    resident: "東京都",
    gender: "female",
    sexual: ["pansexual", "aromantic"],
    imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
    imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
    imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
    imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
    imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
    nickname: "にくねーむ",
  );

  static List<Profile> profiles = [
    Profile(
      id: 1,
      username: "くらしあ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむ",
    ),
    Profile(
      id: 2,
      username: "セゾンユーズ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむずずず",
    ),
    Profile(
      id: 2,
      username: "セゾンユーズセゾンユーズセゾンユーズ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむずずず",
    ),
    Profile(
      id: 2,
      username: "セゾンユーズ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむずずず",
    ),
    Profile(
      id: 2,
      username: "セゾンユーズ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむずずず",
    ),
    Profile(
      id: 2,
      username: "セゾンユーズ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&text=kokoepkgopkeop",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむずずず",
    ),
    Profile(
      id: 2,
      username: "セゾンユーズ",
      title: "ここに名前が入る",
      subTitle: "サブタイトル",
      birthday: "2001-01-01",
      resident: "東京都",
      gender: "female",
      sexual: ["pansexual", "aromantic"],
      imagePath1: "https://dummyimage.com/512x512/000/fff&textgogogopage",
      imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
      imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
      imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
      imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
      nickname: "にくねーむずずず",
    ),
  ];
}
