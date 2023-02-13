import 'package:flutter/material.dart';
import 'package:mobile/function/import.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageTitle = TabItem.message.title;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool noMessage = false;
    bool noNenkaku = false;

    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomerAppBar(pageTitle),
        body: Container(
            child: (noNenkaku == true || noMessage == true)
                ? Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10.0),
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: noNenkaku
                        ? Text(
                            "年齢確認がされていません",
                          )
                        : Text("メッセージはありません"))
                : Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10.0),
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("メッセージある"))));
  }
}
