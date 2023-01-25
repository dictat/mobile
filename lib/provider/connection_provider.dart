import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class ConnectionProvider with ChangeNotifier {
  List<String> _message = ["メッセージ1", "メッセージ2", "メッセージ3", "メッセージ4", "メッセージ5",];

  List<String> getTimeLine(){
    return _message;
  }

  void addTimeLine(){
    _message = _message + _message;
    notifyListeners();
  }
}