import 'package:flutter/material.dart';
import 'package:mobile/base_page.dart';

import 'package:mobile/function/import.dart';

void main() {
  runApp(
    ScreenUtilInit(
        designSize: Size(432, 960),
        builder: (BuildContext context, child) => MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<CountProvider>(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => CountProvider()),
          Provider<ProfileProvider>(create: (_) => ProfileProvider()),
          ChangeNotifierProvider(create: (_) => ProfileProvider()),
          Provider<ConnectionProvider>(create: (_) => ConnectionProvider()),
          ChangeNotifierProvider(create: (_) => ConnectionProvider()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            //https://qiita.com/hiroyukiwk/items/bc027279efb99f50eaf1
            textTheme: GoogleFonts.murechoTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const BasePage(),
        ));
  }
}
