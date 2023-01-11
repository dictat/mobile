import 'package:flutter/material.dart';
import 'package:mobile/pages/custom_app_bar.dart';
import 'package:mobile/enums/tab_item.dart';
import 'package:mobile/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final pageTitle = TabItem.home.title;
    return Scaffold(
      drawer: Drawer(),
      appBar: CustomerAppBar(pageTitle),
      backgroundColor: Colors.transparent,
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