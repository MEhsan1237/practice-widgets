import 'package:flutter/cupertino.dart';

class SliderProviderClassScreen extends ChangeNotifier{
  double _value =1.0;
  double get value => _value;

  void getValue(double val){
    _value = val  ;
    notifyListeners();
  }

}