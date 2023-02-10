import 'package:mobile/function/import.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkManager {
  // GETでデータを取得する。
  // auth = trueでログイン情報もセットで送る。
  static Future<List> getRequestUrlJson(String url, bool? auth) async {
    try {
      var response = await http.get(Uri.parse(url));
      // 確実にjsonならば変換をかける
      var jsonget = json.decode(response.body);

      Iterable l = json.decode(response.body);
      List<TestUser> posts = List<TestUser>.from(l.map((model)=> TestUser.fromJson(model)));
      print(posts);

      return posts;
    } catch (e) {
      print(e);
    }
    //List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
    return [];
  }
}
