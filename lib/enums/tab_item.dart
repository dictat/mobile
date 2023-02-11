import 'package:flutter/material.dart';
import 'package:mobile/function/import.dart';

enum TabItem {
  home(
    title: 'ホーム',
    icon: Icons.home,
      activeIcon: Icons.home_rounded,
    page: HomePage(),
    badges: 0,
  ),
  timeline(
    title: 'タイムライン',
    icon: Icons.timeline,
    page: TimelinePage(),
    badges: 0,
    activeIcon: Icons.home_rounded,
  ),
  community(
    title: 'コミュニティ',
    icon: CommunityMaterialIcons.bulletin_board,
    page: SettingsPage(),
    badges: 0,
    activeIcon: Icons.home_rounded,
  ),
  message(
    title: 'メッセージ',
    icon: CommunityMaterialIcons.message,
    page: ChatPage(),
    badges: 0,
    activeIcon: Icons.home_rounded,
  ),
  settings(
    title: 'マイページ',
    icon: Icons.account_circle_outlined,
    page: SettingsPage(),
    badges: 0,
    activeIcon: Icons.home_rounded,
  );

  const TabItem(
      {required this.title,
      required this.icon,
      required this.page,
      required this.badges,
      required this.activeIcon});

  /// タイトル
  final String title;

  /// アイコン
  final IconData icon;

  /// 画面
  final Widget page;

  /// バッジ
  final int badges;

  /// アクティブアイコン
  final IconData activeIcon;
}
