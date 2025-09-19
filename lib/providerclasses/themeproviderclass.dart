

import 'package:flutter/material.dart';

class ThemeProviderClass extends ChangeNotifier{
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode =>_themeMode;
  void themeChanger(val){
    _themeMode = val;
    notifyListeners();
  }
}