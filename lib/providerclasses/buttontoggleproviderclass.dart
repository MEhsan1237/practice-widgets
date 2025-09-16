



import 'package:flutter/material.dart';

class ButtonToggleProviderClass extends ChangeNotifier{
  bool _isLogin = true;
  bool get isLogin => _isLogin;

  void toggleButton(val){
    _isLogin = !_isLogin;
    notifyListeners();
  }
}