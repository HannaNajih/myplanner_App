import 'package:flutter/material.dart';
import 'package:todo/src/models/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? userModel;

  setUserModel(UserModel user) {
    userModel = user;
    debugPrint('from provider : $userModel');
    notifyListeners();
  }
}
