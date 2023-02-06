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

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light().copyWith(
        primary: const Color(0xff00ffab),
        secondary: const Color(0xff72ffff),
        surface: const Color(0xff00ffab),
        background: Colors.white,
        onBackground: const Color(0xff172774),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Color(0xff172774)),
      textTheme: const TextTheme(
          titleLarge: TextStyle(color: Color(0xff172774)),
          titleMedium: TextStyle(color: Color(0xff172774)),
          titleSmall: TextStyle(color: Color(0xff172774)),
          bodyLarge: TextStyle(color: Color(0xff172774)),
          bodyMedium: TextStyle(color: Color(0xff172774)),
          bodySmall: TextStyle(color: Color(0xff172774))));
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
        BlocProvider<ThemeCubit>.value(
          value: ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: state,
            home: const BasePage(),
          );
        },
      ),
    );
  }
}
