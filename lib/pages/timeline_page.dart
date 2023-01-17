import 'package:flutter/material.dart';
import 'package:mobile/function/import.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    var list = ["メッセージ1", "メッセージ2", "メッセージ3", "メッセージ4", "メッセージ5",];
    final pageTitle = TabItem.timeline.title;

    // テスト
    final CountProvider countProvider = Provider.of<CountProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CustomerAppBar(pageTitle),
      body: Center(
        child:
          ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              if (index >= list.length) {
                list.addAll(["メッセージ6","メッセージ7","メッセージ8","メッセージ9","count="+countProvider.counter.toString()]);
              }
              return _messageItem(list[index]);
            },
          )
      ),
    );
  }


  Widget _messageItem(String title) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Colors.white,
      ),
      height: 90,
      child:ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/7200238?s=64&v=4'),
        ),
        title: Text(
          title,
          style: TextStyle(
              color:Colors.black,
              fontSize: 18.0
          ),
        ),
        onTap: () {
          print("onTap called.");
        }, // タップ
        onLongPress: () {
          print("onLongTap called.");
        }, // 長押し
      ),
    );
  }
}
