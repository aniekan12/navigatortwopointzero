import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStateManager extends ChangeNotifier {
  bool _initialised = false;

  bool get isInitialised => _initialised;

  bool _login = false;
  bool get login => _login;
  set login(bool v) {
    _login = v;
    notifyListeners();
  }

  void initializeApp() {
    _initialised = true;
    notifyListeners();
  }

  void goToLogin() {
    _login = true;
    notifyListeners();
  }

  void closeApp() {
    _initialised = false;

    SystemNavigator.pop();
    notifyListeners();
  }
}
