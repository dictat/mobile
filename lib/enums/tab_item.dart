import 'package:flutter/material.dart';
import 'package:mobile/function/import.dart';

enum TabItem {
  home(
    title: 'ホーム',
    icon: Icons.home,
    page: HomePage(),
  ),

  timeline(
    title: 'タイムライン',
    icon: Icons.timeline,
    page: TimelinePage(),
  ),
  community(
  title: 'コミュニティ',
  icon: CommunityMaterialIcons.bulletin_board,
  page: SettingsPage(),
  ),
  message(
  title: 'メッセージ',
  icon: CommunityMaterialIcons.message,
  page: ChatPage(),
  ),
  settings(
    title: '設定',
    icon: Icons.settings,
    page: SettingsPage(),
  );

  const TabItem({
    required this.title,
    required this.icon,
    required this.page,
  });

  /// タイトル
  final String title;

  /// アイコン
  final IconData icon;

  /// 画面
  final Widget page;
}