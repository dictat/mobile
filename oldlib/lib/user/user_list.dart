import 'package:flutter/material.dart';
import 'package:app_mobile/theme.dart';
import 'package:app_mobile/models/user_model.dart';

var colorData = ColorStatic();

GridView UserListPage(BuildContext context) {

  List<UserResponse> users = UserResponse.users;
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: users.length,

      itemBuilder: (context, int index) {
        /*
        if (index >= users.length) {
          grid.addAll([
            "fff",
            "fff",
            "fff",
            "fff",
            "fff",
            "fff",
          ]);
        }*/
        return _photoItem(users[index], context);
      });
}



Widget _photoItem(UserResponse user, BuildContext context) {
  var assetsImage = "images/" + user.avatarUrl + ".jpg";
  return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/page1');
      },
      child: Container(
          margin: const EdgeInsets.only(left: 1, right: 1, bottom: 10),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: AssetImage(assetsImage), fit: BoxFit.cover))),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.47,
              margin: const EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Colors.white.withOpacity(0.7),
              ),
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.name,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: colorData.mainColorOne,
                            fontWeight: FontWeight.w900,
                          )),
                  Row(children: [
                    Icon(Icons.hub, size: 16),
                    Padding(padding: EdgeInsets.only(right: 2)),
                    Text("性別",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            )),
                  ]),
                  Row(children: [
                    Icon(Icons.house, size: 16),
                    Padding(padding: EdgeInsets.only(right: 2)),
                    Text("都道府県",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            )),
                  ]),
                ],
              ),
            ),
          ])));
}
