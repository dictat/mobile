import 'package:flutter/material.dart';
import 'package:mobile/function/import.dart';

enum TabItem {
  home(
    title: 'ホーム',
    icon: Icons.home,
    page: HomePage(),
    badges: false,
  ),
  timeline(
    title: 'タイムライン',
    icon: Icons.timeline,
    page: TimelinePage(),
    badges: false,
  ),
  community(
    title: 'コミュニティ',
    icon: CommunityMaterialIcons.bulletin_board,
    page: SettingsPage(),
    badges: false,
  ),
  message(
    title: 'メッセージ',
    icon: CommunityMaterialIcons.message,
    page: ChatPage(),
    badges: false,
  ),
  settings(
    title: 'マイページ',
    icon: Icons.account_circle_outlined,
    page: SettingsPage(),
    badges: false,
  );

  const TabItem(
      {required this.title,
      required this.icon,
      required this.page,
      required this.badges});

  /// タイトル
  final String title;

  /// アイコン
  final IconData icon;

  /// 画面
  final Widget page;

  /// バッジ
  final bool badges;
}
