import 'package:mobile/function/import.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_themeDatas[AppTheme.light]!);

  void changeTheme(AppTheme theme) {
    emit(_themeDatas[theme]!);
  }
}

// テーマを増やせるようにEnumで定義
enum AppTheme {
  light,
  dark,
}

// EnumからThemeを呼び出す配列を作成
// 今回の記事のメインテーマはこの中のThemeData部分である。
final _themeDatas = {
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
  ),
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black38,
  ),
};