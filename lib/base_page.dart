import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:mobile/function/import.dart';

final _navigatorKeys = <TabItem, GlobalKey<NavigatorState>>{
  TabItem.home: GlobalKey<NavigatorState>(),
  TabItem.timeline: GlobalKey<NavigatorState>(),
  TabItem.settings: GlobalKey<NavigatorState>(),
};

// 一つ前にタップされたタブ
var oldTapIndex;

class BasePage extends HookConsumerWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    Future<bool> bloo = SharedPreferencesManager.putString("test", "fff");

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
                      /*
                      Consumer<CountProvider>(
                        builder: (context, countProvider, _) {
                          int s = countProvider.getMypageCounter(tabItem.title);
                          return s > 0
                              ? Positioned(
                                  right: 0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints(
                                      minHeight: 16,
                                      minWidth: 16,
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      s > 99 ? '99+' : s.toString(),
                                      style: const TextStyle(
                                        fontSize: 6,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox();


                        },
                      ),*/
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
