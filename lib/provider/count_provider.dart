import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CountProvider with ChangeNotifier {
  // 通知系のカウント
  Map<String,int> notificationCounter = {'':0};
  int getMypageCounter(String code) {
    int? result =  notificationCounter.containsKey(code) ? notificationCounter[code] : 0;
    // nullなら
    result ??= 0;
    return result;
  }

  void setMypageCounter(String code) {
    if(notificationCounter.containsKey(code) == false) {
      notificationCounter[code] = 0;
    }
    notificationCounter[code] = (notificationCounter[code]! + 1);
    notifyListeners();
  }
}
