import 'package:flutter/material.dart';

import 'package:mobile/function/import.dart';

Profile profile = Profile.profile;

class TabInfo {
  String label;
  Widget widget;

  TabInfo(this.label, this.widget);
}

class ProfileDetailPage extends StatelessWidget {
  int imageNo = 0;

  @override
  Widget build(BuildContext context) {
    double widthContainerSize = (MediaQuery.of(context).size.width) - 16;
    var profileFunction = ProfileFunction();

    return Scaffold(
      appBar: CustomerAppBar("test"),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageContainerView(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: widthContainerSize,
                child: Column(
                  children: [
                    Text(profile.username,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30.sp,
                            color: Colors.black)),
                    Text(
                        "${profile.birthday} | ${profile.resident} | ${profileFunction.getGenderName(profile.gender)}",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20.sp,
                            color: Colors.black)),
                    Text(profileFunction.getSexualListName(profile.sexual),
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20.sp,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
            ProfileContentsView(),
          ],
        ),
      ),
    );
  }

  Widget myContainer({double size = 300, Color? color, String text = ''}) {
    return Container(
      color: color,
      width: size,
      height: size,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class ProfileContentsView extends StatefulWidget {
  @override
  _ProfileContentsViewState createState() => _ProfileContentsViewState();
}

class _ProfileContentsViewState extends State<ProfileContentsView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: selectedIndex,
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        TabBar(
          labelColor: Colors.deepPurple.shade800,
          unselectedLabelColor: Colors.blueGrey.shade400,
          indicatorColor: Colors.blue.shade800,
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Colors.amberAccent; //<-- SEE HERE
              return null;
            },
          ),
          tabs: <Tab>[
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.account_box),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.record_voice_over),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.music_note),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.image),
                ],
              ),
            ),
          ],
          controller: tabController,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
              tabController.animateTo(index);
            });
          },
        ),
        IndexedStack(
          children: <Widget>[
            Visibility(
              child: Container(
                height: 200.h,
                color: Colors.yellow,
                child: Center(
                  child: Text('Content left'),
                ),
              ),
              maintainState: true,
              visible: selectedIndex == 0,
            ),
            Visibility(
              child: Container(
                height: 1000.h,
                color: Colors.red,
                child: Center(
                  child: Text('Content right'),
                ),
              ),
              maintainState: true,
              visible: selectedIndex == 1,
            ),
            Visibility(
              child: Container(
                height: 1000.h,
                color: Colors.red,
                child: Center(
                  child: Text('Content right'),
                ),
              ),
              maintainState: true,
              visible: selectedIndex == 2,
            ),
            Visibility(
              child: Container(
                height: 1000.h,
                color: Colors.red,
                child: Center(
                  child: Text('Content right'),
                ),
              ),
              maintainState: true,
              visible: selectedIndex == 3,
            ),
          ],
          index: selectedIndex,
        ),
      ]),
    );
  }
}

class ImageContainerView extends StatefulWidget {
  @override
  _ImageContainerViewState createState() => _ImageContainerViewState();
}

class _ImageContainerViewState extends State<ImageContainerView> {
  @override
  void initState() {
    profile = Profile.profile;
  }

  int active = 0;

  @override
  Widget build(BuildContext context) {
    NetworkImage ass1 = NetworkImage(profile.imagePath1);
    NetworkImage ass2 = NetworkImage(profile.imagePath2);
    NetworkImage ass3 = NetworkImage(profile.imagePath3);
    NetworkImage ass4 = NetworkImage(profile.imagePath4);
    NetworkImage ass5 = NetworkImage(profile.imagePath5);
    List<NetworkImage> imagePaths = [ass1, ass2, ass3, ass4, ass5];

    double padding = 7.0;
    double widthSize = (MediaQuery.of(context).size.width - (padding * 10)) / 5;
    return Column(children: [
      Image(
        fit: BoxFit.fill,
        image: imagePaths[active],
      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          for (int i = 0; i < imagePaths.length; i++)
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: GestureDetector(
                onTap: () {

                },
                // 対象の画像を記述
                child: Container(
                  padding: EdgeInsets.all(1.0),
                  width: widthSize,
                  decoration: active == i
                      ? BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      : null,
                  child: Image(
                    image: imagePaths[i],
                    width: (widthSize - 2).w,
                    height: (widthSize - 2).h,
                  ),
                ),
              ),
            ),
        ]),
      )
    ]);
  }
}
