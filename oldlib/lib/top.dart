import 'package:flutter/material.dart';
import 'package:app_mobile/theme.dart';
import 'package:app_mobile/user/user_list.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final colorData = ColorStatic();

class TopPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/page1': (context) => Notice(),
        '/page2': (context) => MyPage(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // 選択中フッターメニューのインデックスを一時保存する用変数
  int selectedIndex = 0;

  // 切り替える画面のリスト
  List<Widget> display = [HomePage(), Notice(), MyPage(), Notice(), MyPage()];

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Container(
        decoration: colorData.mainColor,
        child: Scaffold(
          backgroundColor: Colors.transparent,
            appBar: const _CustomerAppBar(),
            body: display[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: colorData.mainColorOne,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white ,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: '検索',),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    label: 'タイムライン',),
                BottomNavigationBarItem(
                    icon: Icon(Icons.email),
                    label: 'メッセージ',),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard_rounded),
                    label: 'コミュニティ',),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: '設定',),
              ],
              // 現在選択されているフッターメニューのインデックス
              currentIndex: selectedIndex,
              // フッター領域の影
              //elevation: 200,
              // フッターメニュータップ時の処理
              onTap: (int index) {
                selectedIndex = index;
                setState(() {});
              },
            )));
  }
}

class _CustomerAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomerAppBar({
    Key? key,
}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.search),
      actions:[
        Container(
          margin: const EdgeInsets.only(right:20),
          child:const CircleAvatar(backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/7200238?s=64&v=4'
          ),)
        )
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58.0);
}

List<Widget> HomePageHeader(int test) {
  if (test == 0) {}
  return <Widget>[
    IconButton(
      icon: Icon(Icons.add),
      onPressed: () {},
    ),
  ];
}

// --------- 切り替える画面 -----------
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName("/"));
    return UserListPage(context);
  }
}

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('お知らせ')),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepOrange.shade800.withOpacity(0.8),
                Colors.deepOrange.shade200.withOpacity(0.8)
              ])),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('マイページ')),
      color: Colors.green[200],
    );
  }
}
