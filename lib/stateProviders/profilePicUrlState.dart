import 'package:coocoo/config/Constants.dart';
import 'package:coocoo/utils/SharedObjects.dart';
import 'package:flutter/material.dart';

String NoDpUrl =
    "";

class ProfilePicUrlState with ChangeNotifier {
  String _profilePicUrl =
      SharedObjects.prefs.getString(Constants.sessionProfilePictureUrl) ??
          NoDpUrl;

  String get profilePicUrl => _profilePicUrl;

  void setProfilePicUrl(String newUrl) {
    _profilePicUrl = newUrl;
    notifyListeners();
  }
}
