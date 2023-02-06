import 'dart:io';
import 'package:mobile/function/import.dart';

class ProfileProvider with ChangeNotifier {

  List<Profile> profileList = Profile.profiles;

  // 今回状態管理をする変数
  //状態を変化させる処理（ボタンを押した時に実行される処理）
  void nextProfileList() {
    this.profileList = this.profileList + Profile.profiles;
    notifyListeners();
  }

  List<Profile> getProfileList() {
    return this.profileList;
  }
}