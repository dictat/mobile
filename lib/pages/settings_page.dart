import 'package:flutter/material.dart';
import 'package:mobile/pages/custom_app_bar.dart';
import 'package:mobile/enums/tab_item.dart';
import 'package:mobile/pages/detail_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageTitle = TabItem.settings.title;
    return Scaffold(
      appBar: CustomerAppBar(pageTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageTitle),
            ElevatedButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const DetailPage(),
                  ),
                );
              },
              child: const Text('詳細ページへ'),
            ),
          ],
        ),
      ),
    );
  }
}
