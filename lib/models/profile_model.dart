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

  /*
  "phone": "09046180911",
  "location": null,
  "profile": null,
  "isAvailable": true,
  "status": "active",
  "userType": "user",
  "role": "user",
  "introduction": null,
  "provider": null,
  "providerId": null,
  "roleId": null,
  "unread": 23,
  "isPremium": false,
  "completeOnboarding": true,
  "point": 0,
  "hometown": null,
  "todayWord": null,
  "height": 163,
  "interest": null,
  "meetExpectation": null,
  "bodyType": null,
  "salary": null,
  "job": null,
  "education": "短大・専門学校卒",
  "companyName": null,
  "marriageStatus": "別居希望",
  "tobacco": "吸わない",
  "sake": "飲む",
  "familyStatus": null,
  "livingStatus": null,
  "remainFreeMsg": 5,
  "newUser": true,
  "payLevel": "free",
  "isAgeVerified": false,
  "isSalaryVerified": false,
  "messageTemplate": null,
  "doShowTemplate": true,
  "isFootprintEnable": true,
  "isPrivateMode": false,
  "isPermanentDeleted": false,
  "hiddenMeForNonPremium": false,
  "lastActivedAt": "2023-01-11T16:32:43.451Z",
  "created": "2022-07-12T16:22:59.190Z",
  "updated": "2023-01-11T16:32:43.451Z",

   */

  Profile(
      {required String this.title,
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
      this.birthday,this.resident,this.sexual});

  static Profile profile = Profile(
    id: 1,
    username: "セゾンユーズ",
    title: "ここに名前が入る",
    subTitle: "サブタイトル",
    birthday: "2001-01-01",
    resident: "東京都",
    gender:"female",
    sexual:["pansexual", "aromantic"],
    imagePath1: "https://dummyimage.com/512x512/000/fff&text=1page",
    imagePath2: "https://dummyimage.com/512x512/fff/000&text=2page",
    imagePath3: "https://dummyimage.com/512x512/fff/000&text=3page",
    imagePath4: "https://dummyimage.com/512x512/fff/000&text=4page",
    imagePath5: "https://dummyimage.com/512x512/fff/000&text=5page",
  );
}
