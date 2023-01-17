import 'dart:io';
import 'package:mobile/function/import.dart';

class ProfileProvider with ChangeNotifier {

  List<Profile> profileList = Profile.profiles;
}