import 'package:flutter/material.dart';

import 'package:mobile/function/import.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CountProvider countProvider = Provider.of<CountProvider>(context, listen: true);
    final pageTitle = TabItem.home.title;

    return Scaffold(
      drawerEdgeDragWidth: 0,
      // 左スクロールでDrawerを表示させない。
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Text('Test App'),
            ),
            ListTile(
              title: Text('item1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('item2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: CustomerAppBar(pageTitle),
      backgroundColor: Colors.transparent,
      body:
      Consumer<ProfileProvider>(
        builder: (context, profileProvider, _) {
          return ProfileListWidget(profiles: profileProvider.profileList);
        },
      ),

      /*
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageTitle),
            ElevatedButton(
              onPressed: () {
                countProvider.incrementCounter();
                Navigator.of(context).push(
                    //CustomPageRoute(DetailPage()),
                  MaterialPageRoute(
                    builder: (context) => ProfileDetailPage(),
                  ),
                );
              },
              child: const Text('詳細ページへ'),
            ),
          ],
        ),
      ),*/
    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.white;

  @override
  String? get barrierLabel => null;

  final Widget child;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    // ここを変えればいろんなトランジションにできるぞ
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(
    milliseconds: 1, // 変化にかかる時間を指定
  );
}