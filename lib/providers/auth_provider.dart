import 'package:flutter/cupertino.dart';
import 'package:simonaditia_uas_pmobile/pages/models/user_model.dart';
import 'package:simonaditia_uas_pmobile/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String? fullname,
    String? email,
    String? password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        fullname: fullname,
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String? email,
    String? password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
