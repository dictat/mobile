import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/function/import.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _themeFlag = false;
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
                  _getCamera();
                },
                child: Text("カメラ")),
            ElevatedButton(
                onPressed: () {
                  _getMusic();
                },
                child: Text("音楽")),
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
            ElevatedButton(onPressed: (){

              context
                  .read<ThemeCubit>()
                  .changeTheme(_themeFlag ? AppTheme.dark : AppTheme.light);

                _themeFlag = !_themeFlag;
            }, child: const Text('カラー変更'))

          ],
        ),
      ),
    );
  }

  static const platform = const MethodChannel('test_camera');

  Future<void> _getCamera() async {
    String cameraLevel;
    try {
      await platform.invokeMethod('getCamera');
    } on PlatformException catch (e) {
      cameraLevel = "Failed to get camera";
    }
  }

  Future<void> _getMusic() async {
    String cameraLevel;
    try {
      final test = await platform.invokeMethod('getMusic');
      print(test);
    } on PlatformException catch (e) {
      cameraLevel = "Failed to get camera";
    }
  }
}
