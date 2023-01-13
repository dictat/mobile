import 'package:flutter/material.dart';
import 'package:mobile/pages/custom_app_bar.dart';
import 'package:mobile/models/profile_model.dart';
import 'package:mobile/function/profile_function.dart';

Profile profile = Profile.profile;

class ProfileDetailPage extends StatelessWidget {
  int imageNo = 0;

  @override
  Widget build(BuildContext context) {
    profile = Profile.profile;
    double widthContainerSize = (MediaQuery.of(context).size.width ) - 16;
    var profileFunction = ProfileFunction();

    return Scaffold(
      appBar: CustomerAppBar("test"),
      backgroundColor: Colors.white,
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
                            fontSize: 24,
                            color: Colors.black)),
                    Text("${profile.birthday} | ${profile.resident} | ${profileFunction.getGenderName(profile.gender)}",style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        color: Colors.black)),
                    Text(profileFunction.getSexualListName(profile.sexual),style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        color: Colors.black))
                  ],
                ),
              ),
            ),

            myContainer(color: Colors.blue, text: 'START', size: 100),
            myContainer(color: Colors.orange),
            myContainer(color: Colors.red),
            myContainer(color: Colors.blue),
            myContainer(color: Colors.orange),
            myContainer(color: Colors.red, text: 'END'),
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

class ImageContainerView extends StatefulWidget {
  @override
  _ImageContainerViewState createState() => _ImageContainerViewState();
}

class _ImageContainerViewState extends State<ImageContainerView> {
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
                  setState(() {
                    active = i;
                  });
                },
                // 対象の画像を記述
                child: Container(
                  width: widthSize,
                  decoration: active == i
                      ? BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(8.0),
                        )
                      : null,
                  child: Image(
                    image: imagePaths[i],
                    width: widthSize - 2,
                    height: widthSize - 2,
                  ),
                ),
              ),
            ),
        ]),
      )
    ]);
  }
}

class ClickGood extends StatefulWidget {
  @override
  _ClickGoodState createState() => _ClickGoodState();
}

class _ClickGoodState extends State<ClickGood> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Column(children: <Widget>[
            Container(
              child: Center(
                child: new Icon(
                  Icons.thumb_up,
                  color: _active ? Colors.orange[700] : Colors.grey[500],
                  size: 100.0,
                ),
              ),
              width: 200.0,
              height: 200.0,
            ),
            Container(
              child: Center(
                child: Text(
                  _active ? 'Active' : 'Inactive',
                  style: TextStyle(fontSize: 32.0, color: Colors.white),
                ),
              ),
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: _active ? Colors.orange[700] : Colors.grey[600],
              ),
            ),
          ]),
        ));
  }
}
