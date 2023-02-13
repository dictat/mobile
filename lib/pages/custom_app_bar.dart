import 'package:flutter/material.dart';

class CustomerAppBar extends StatelessWidget with PreferredSizeWidget {
  /*
  const CustomerAppBar({
    Key? key,
  }) :super(key:key);

   */
  String name = "";

  CustomerAppBar(String name) {
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {

    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: leadingSelect(context),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://iconbu.com/wp-content/uploads/2023/01/%E3%83%86%E3%82%A3%E3%83%A9%E3%83%8E%E3%82%B5%E3%82%A6%E3%83%AB%E3%82%B9%E3%81%95%E3%82%93.jpg'),
              ))
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(46.0);

  Widget leadingSelect(BuildContext context) {
    switch (name) {
      case "ホーム":

        return IconButton(
          icon: Icon(Icons.person_search), onPressed: () => Scaffold.of(context).openDrawer(),
        );
      case "タイムライン":
        return const Icon(Icons.add_a_photo);
      case "メッセージ":
        return const Icon(Icons.add_a_photo);
      case "コミュニティ":
        return const Icon(Icons.add_a_photo);
      default:
        return SizedBox.shrink();
    }

  }
}



/*
* ,AppBar(
        title: Text(pageTitle),
        leading: const Icon(Icons.location_on),
        backgroundColor: Colors.deepPurple.shade800,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.post_add),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('登録したよ')));
            },
          ),
        ],
      )*/