import 'package:mobile/function/import.dart';

class ProfileListWidget extends StatelessWidget {
  ProfileListWidget(
      {Key? key,
      required List<Profile> profiles,
      String? nextUrl,
      Function? nextAction})
      : _profiles = profiles,
        _nextUrl = nextUrl ?? '/profile-detail',
        super(key: key);

  final List<Profile> _profiles;
  final String _nextUrl;

  // Flutter Web の場合 dotenv.get('BACKEND_URL_HOST_CASE_FLUTTER_WEB')
  // final Uri _uriHost = Uri.parse(dotenv.get('BACKEND_URL_HOST'));

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(builder: (context, profileProvider, _) {
      return GridView.count(
        crossAxisCount: 2,
        children: _profileOneView(_profiles),
      );
    });
  }

  List<Widget> _profileOneView(List<Profile> profiles) {
    List<Widget> tmp = [];
    for (Profile profile in profiles) {
      tmp.add(Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.red.shade100,
          child: Text("test")));
    }
    
    return tmp;
  }
}
