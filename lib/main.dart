import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mobile/base_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:mobile/function/import.dart';
import 'package:mobile/pages/login/login_page.dart';
import 'package:mobile/pages/login/signin_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_login/theme.dart';

void main() {
  // 処理が終了するまでスプラッシュ
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

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

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _counter = 0;
  Widget _page = BasePage();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void initState() {

    Future<bool> isLogin = SharedPreferencesManager.get('isLogin',true);
    isLogin.then((value) {
      setState(() {
        if (value == true) {
          _page = BasePage();
        } else {
          _page = LoginScreen();
        }
      });
      FlutterNativeSplash.remove();
      return ;
    });

    // 例えばログインしているかを判定して切り替える。
    /*
    Future.delayed(Duration(seconds: 3)).then((_) {
      setState(() {
        if (isLogin == true) {
          _page = BasePage();
        } else {
          _page = LoginScreen();
        }
      });
      FlutterNativeSplash.remove();
    });*/
  }

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
            home: _page,
          );
        },
      ),
    );
  }
}

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ])),
      child: FlutterLogin(
        theme: LoginTheme(

          accentColor: Colors.blueAccent,
          errorColor: Colors.teal,
          buttonTheme: LoginButtonTheme(
            backgroundColor: Colors.deepPurple,
            highlightColor: Colors.red,
            elevation: 9.0,
            highlightElevation: 6.0,
          ),
          inputTheme: InputDecorationTheme(
            filled:true,
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 5),
            ),
          ),
        ),
        userType: LoginUserType.phone,
        messages: LoginMessages(
          userHint: '電話番号',
          passwordHint: 'パスワード',
          confirmPasswordHint: 'パスワード（確認）',
          loginButton: 'ログイン',
          signupButton: '会員登録',
          forgotPasswordButton: 'もしかしてパスワードを忘れましたか？',
          recoverPasswordButton: '助けて！',
          goBackButton: '戻る',
          confirmPasswordError: 'パスワードが一致しません。',
          recoverPasswordDescription: '登録時の電話番号を入力してください。',
          recoverPasswordSuccess: 'Password rescued successfully',
          recoverPasswordIntro:'登録時の電話番号を入力してください。',

        ),
        savedEmail: 'test',
        title: 'タイトル',
        logo: AssetImage('assets/images/ecorp-lightblue.png'),
        onLogin: _authUser,
        onSignup: _signupUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => BasePage(),
          ));
        },
        onRecoverPassword: _recoverPassword,
      ),
    );
  }
}
