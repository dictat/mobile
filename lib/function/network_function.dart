
import 'package:mobile/function/import.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';


class profileAPI implements NetworkManager{
  /*
  Future<List<TestUser>> getProfileList(){

    List data = (json.decode(response.body) as Map<String, dynamic>)["data"];

    return null;
  }*/
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
  static Future<String> getRequestUrl(String url, bool? auth) async {
    if (apiKey==""){
      await init();
    }

    final client = RetryClient(http.Client());
    try {
      var response =
          await client.read(Uri.parse(url), headers: {"X-API-KEY": "{apiKey}"});

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
