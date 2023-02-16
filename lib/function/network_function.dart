
import 'dart:convert';

import 'package:mobile/function/import.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';


class profileAPI implements NetworkManager{

  Future<String> getProfileList() async {
    //String response = await NetworkManager.getRequestUrl(url:'http://192.168.0.103:3000/hello',auth:false);
    String response = '{"user": {"userId": 5401,"id":30,"title":"タイトル","body":"ここに本文","attach":{"id":90,"name":"names","altText":"altText","link":"http://www.com","thumbnailUrl":"testt","height":100,"width":100,"type":"mobile","status":"succ","creatorId":"2022","createDate":"2022","updateDate":"4432","blur":"ffff"}}}';
    var tmp = json.decode(response);
    //TestUser data = tmp['user'] as User;

    return "";
  }
}

class NetworkManager {
  static String apiKey = "";

  static init() async {
    if (apiKey == "") {
      apiKey = await SharedPreferencesManager.get("API_KEY", "normal");
    }
    return apiKey;
  }

  // GETでデータを取得する。
  // auth = trueでログイン情報もセットで送る。
  static Future<String> getRequestUrl({required String url, required bool auth}) async {
    if (apiKey==""){
      await init();
    }

    final client = RetryClient(http.Client());
    try {
      var response = await client.read(Uri.parse(url), headers: {"X-API-KEY": "{apiKey}"});

      // TODO 暗号の解除

      return response;
    } catch (e) {
      client.close();
    }
    //List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
    return "Error";
  }

// POSTでデータを取得する。
// auth = trueでログイン情報もセットで送る。

  static Future<String> postRequestUrl(String url, bool? auth) async {
    if (apiKey==""){
      await init();
    }
    return "";
  }
}
