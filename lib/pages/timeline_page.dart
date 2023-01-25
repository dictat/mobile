import 'package:flutter/material.dart';
import 'package:mobile/function/import.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageTitle = TabItem.timeline.title;

    // テスト
    final CountProvider countProvider =
        Provider.of<CountProvider>(context, listen: true);
    final ConnectionProvider connectionProvider =
        Provider.of<ConnectionProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CustomerAppBar(pageTitle),
      body: Center(
        child: Consumer<ConnectionProvider>(
          builder: (context, connectionProvider, _) {
            return TimeLineWidget(timeline: connectionProvider.getTimeLine());
          },
        ),
      ),
    );
  }

  Widget _messageItem(String title) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 90,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/7200238?s=64&v=4'),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
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

class TimeLineWidget extends StatelessWidget {
  TimeLineWidget(
      {Key? key,
      required List<String> timeline,
      String? nextUrl,
      Function? nextAction})
      : _timeline = timeline,
        _nextUrl = nextUrl ?? '/profile-detail',
        super(key: key);

  final List<String> _timeline;
  final String _nextUrl;

  // Flutter Web の場合 dotenv.get('BACKEND_URL_HOST_CASE_FLUTTER_WEB')
  // final Uri _uriHost = Uri.parse(dotenv.get('BACKEND_URL_HOST'));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return _profileOneView(_timeline[index], context);
      },
    );
  }

  Widget _profileOneView(String profiles, context) {
    final ConnectionProvider connectionProvider =
        Provider.of<ConnectionProvider>(context, listen: true);
    return Container(
      margin: EdgeInsets.all(8.0.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/7200238?s=64&v=4'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("このへんに名前",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.bold)),
                  Text("1月1日",
                      style: TextStyle(
                        fontSize: 15.sp,
                      )),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0.sp),
            child: Text("あいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえお")
          ),
          Padding(
              padding: EdgeInsets.all(10.0.sp),
              child: Icon(Icons.favorite_border,color: Colors.deepPurple,)
          ),
        ],
      ),
    );
  }
}
