import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:mobile/function/import.dart';
import 'package:mobile/pages/login/signin_page.dart';
import '../../main.dart';
import 'package:mobile/amplifyconfiguration.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Future<Null> _showDialogForResult(
      String text, Function onSuccess, Widget dialogWidget) async {
    bool result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(title: Text(text), children: [
            dialogWidget,
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ]);
        });

    if (result) onSuccess();
  }

  // dialogWidget must return true or false
  Widget openDialogButton(
      String text, Function onSuccess, Widget dialogWidget) {
    return ElevatedButton(
        child: Text(text),
        onPressed: () {
          _showDialogForResult(text, onSuccess, dialogWidget);
        });
  }

  bool _isAmplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void onSignInSuccess() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => MyApp()), (route) => false);
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ,
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("この辺にログインボックス"),
            openDialogButton(
                "Sign Up", () => {print("sign up success")}, SignUpView())
          ],
        )));
  }
}
