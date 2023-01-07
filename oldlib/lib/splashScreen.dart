import 'dart:async';

import 'package:flutter/material.dart';
import 'package:app_mobile/top.dart';
import 'package:app_mobile/core/core.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TopPage()));
    });
    // Check network
    /*
    HttpClient.getInstance().checkInternetConnection().then((value) {
      if (value) {
        _checkToken().then((logined) async {
          if (logined) {
            //Login firebase
            if (Singleton().token?.email != null) {
              FirebaseAuthUtil().loginFirebase(Singleton().token.email);
            }

            UsersRepository().getInfoUserGoogleAnalytics();

            //Update account service
            await UsersRepository().getUsersService();
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
                  (Route<dynamic> route) => false,
            );
          } else {
            Timer(Duration(seconds: 3), () {
              Navigator.pushNamed(context, RouterId.LOGIN);
            });
          }
        });
      } else {
        showNotificationDialog(
            context: context, content: "通信エラーが発生しました", okButtonTitle: "OK");
      }
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: Image.asset(
          "images/logo.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }


  /*
  Future<dynamic> _checkToken() async {
    var completer = new Completer();
    SharedPreferencesManager.get(ConstantsCore.ACCESS_TOKEN, "").then((token) {
      if (token.length > 0) {
        /*
        LoginRepository().refreshToken(token).then((value) {
          if (value) {
            completer.complete(true);
          } else {
            completer.complete(false);
          }
        });*/
      } else {
        completer.complete(false);
      }
    }).catchError((e) {
      completer.complete(false);
    });
    return completer.future;
  }

   */
}
