import 'package:mobile/function/import.dart';
import '../../base_page.dart';
import '../../main.dart';
import 'package:mobile/amplifyconfiguration.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmationCodeController = TextEditingController();

  String _signUpError = "";
  bool _isSignedUp = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  bool _isAmplifyConfigured = false;

  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      setState(() => _isAmplifyConfigured = true);
      print('Successfully configured');
    } on Exception catch (e) {
      print('Error configuring Amplify: $e');
    }
  }

  void _signUp() async {
    setState(() {
      _signUpError = "";
    });

    Map<CognitoUserAttributeKey, String> userAttributes = {
      CognitoUserAttributeKey.email: emailController.text,
      CognitoUserAttributeKey.phoneNumber: phoneController.text,
    };
    try {
      await Amplify.Auth.signUp(
          username: usernameController.text.trim(),
          password: passwordController.text.trim(),
          options: CognitoSignUpOptions(userAttributes: userAttributes));

      setState(() {
        _isSignedUp = true;
      });
    } on AuthException catch (error) {
      _setError(error);
    }
  }

  void _confirmSignUp() async {
    setState(() {
      _signUpError = "";
    });

    try {
      /*
      await Amplify.Auth.confirmSignUp(
          username: usernameController.text.trim(),
          confirmationCode: confirmationCodeController.text.trim());

       */
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=>const BasePage(),)
      );
    } on AuthException catch (error) {
      _setError(error);
    }
  }

  void _setError(AuthException error) {
    setState(() {
      _signUpError = error.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                // wrap your Column in Expanded
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Visibility(
                        visible: !_isSignedUp,
                        child: Column(children: [
                          TextFormField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: '日本の電話番号のみ使用できます。',
                              labelText: '電話番号 *',
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.lock),
                              hintText: '8桁以上で入力してください。',
                              labelText: 'パスワード *',
                            ),
                          ),

                          ElevatedButton(
                            onPressed: _confirmSignUp,//_signUp,
                            child: const Text('登録する'),
                          ),
                        ]),
                      ),
                      Visibility(
                          visible: _isSignedUp,
                          child: Column(children: [
                            TextFormField(
                                controller: confirmationCodeController,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.confirmation_number),
                                  hintText: '認証コードを入力してください。',
                                  labelText: '認証コード *',
                                )),
                            ElevatedButton(
                              onPressed: _confirmSignUp,
                              child: const Text('登録する'),
                            ),
                          ])),
                      const Padding(padding: EdgeInsets.all(10.0)),
                      ErrorView(_signUpError)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorView extends StatelessWidget {
  final String error;

  ErrorView(this.error);

  @override
  Widget build(BuildContext context) {
    if (error.isNotEmpty) {
      return Column(children: <Widget>[
        Text('Error: $error',
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(fontWeight: FontWeight.bold)),
      ]);
    } else {
      return Container();
    }
  }
}
