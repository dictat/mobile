import 'package:mobile/function/import.dart';

import 'package:like_button/like_button.dart';

final _myData = StateNotifierProvider(((ref)=>MyData()));

class TimelinePage extends HookConsumerWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageTitle = TabItem.timeline.title;

    List<Todo> todos = ref.watch(todosProvider);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CustomerAppBar(pageTitle),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 1.h,
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.public),),
                  Tab(icon: Icon(Icons.diversity_1), ),
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              TimeLineWidget(timeline: [],),
              TimeLineWidget(timeline: [],),
              Consumer(
                  builder: (context, ref, child) =>
                      GestureDetector(
                        child: Container(color:Colors.red),
                          onTap: () {

                          })),
            ]),
          ),
        ),
      ),
    );
  }
}

/**
 *         child: Column(
    children: [
    Center(
    child: Consumer<ConnectionProvider>(
    builder: (context, connectionProvider, _) {
    return TimeLineWidget(
    timeline: connectionProvider.getTimeLine());
    },
    ),
    ),
    ],
    ),
 */

class TimeLineWidget extends StatelessWidget {
  TimeLineWidget({Key? key,
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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://iconbu.com/wp-content/uploads/2023/01/%E5%BF%8D%E8%80%85%E3%81%AD%E3%81%93%E3%81%95%E3%82%93.jpg'),
                      ),
                      width: 70.w,
                      height: 60.sp,
                    ),
                    Container(
                      width: 280.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("このあたりにお名前を入れて。",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold)),
                          Text("1月1日",
                              style: TextStyle(
                                fontSize: 13.sp,
                              )),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.mode_edit_outlined,
                          size: 20.sp,
                        ) //more_horiz
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(9.0.sp),
                  child: Text(
                    "あいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいう"
                        "えおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえお",
                    style: TextStyle(fontSize: 18.sp),
                  )),
              Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: LikeButton(
                  likeCount: 665,
                  isLiked: false,
                  likeBuilder: (bool isLiked) {
                    return Icon(Icons.favorite,
                        color: isLiked ? Colors.deepPurple : Colors.grey);
                  },
                  circleColor: CircleColor(
                      start: Color(0xff00ddff), end: Color(0xff0099cc)),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Color(0xff33b5e5),
                    dotSecondaryColor: Color(0xff0099cc),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
