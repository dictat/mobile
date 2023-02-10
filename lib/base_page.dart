import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/function/import.dart';

final _navigatorKeys = <TabItem, GlobalKey<NavigatorState>>{
  TabItem.home: GlobalKey<NavigatorState>(),
  TabItem.timeline: GlobalKey<NavigatorState>(),
  TabItem.settings: GlobalKey<NavigatorState>(),
};

// 一つ前にタップされたタブ
var oldTapIndex;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class BasePage extends HookWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {

    Future<bool> bloo = SharedPreferencesManager.putString("test","fff");

    final currentTab = useState(TabItem.home);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: TabItem.values
              .map(
                (tabItem) => Offstage(
                  offstage: currentTab.value != tabItem,
                  child: Navigator(
                    key: _navigatorKeys[tabItem],
                    onGenerateRoute: (settings) {
                      return MaterialPageRoute<Widget>(
                        builder: (context) => tabItem.page,
                      );
                    },
                  ),
                ),
              )
              .toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple.shade800,
          type: BottomNavigationBarType.fixed,
          currentIndex: TabItem.values.indexOf(currentTab.value),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: TabItem.values
              .map(
                (tabItem) => BottomNavigationBarItem(
                  icon: Stack(
                    children: [
                      Icon(tabItem.icon),
                      tabItem.badges
                          ? Positioned(
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                constraints: BoxConstraints(
                                  minHeight: 16,
                                  minWidth: 16,
                                ),
                                child: Text(
                                  '99+',
                                  style: TextStyle(
                                    fontSize: 6,
                                    color: Colors.white,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  label: tabItem.title,
                ),
              )
              .toList(),
          onTap: (index) {
            final selectedTab = TabItem.values[index];
            if (oldTapIndex == null) {
              oldTapIndex = 0;
            }
            if (currentTab.value == selectedTab) {
              _navigatorKeys[selectedTab]
                  ?.currentState
                  ?.popUntil((route) => route.isFirst);
            } else {
              // 未選択
              final selectedOldTab = TabItem.values[oldTapIndex];
              // TOPに戻しておく
              _navigatorKeys[selectedOldTab]
                  ?.currentState
                  ?.popUntil((route) => route.isFirst);
              currentTab.value = selectedTab;
            }

            //過去のTAPを保存
            oldTapIndex = index;
          },
        ),
      ),
    );
  }
}
