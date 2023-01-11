import 'package:flutter/material.dart';
import 'package:mobile/base_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //https://qiita.com/hiroyukiwk/items/bc027279efb99f50eaf1
        textTheme: GoogleFonts.murechoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const BasePage(),
    );
  }
}
