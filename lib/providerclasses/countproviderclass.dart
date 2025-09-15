


import 'package:flutter/widgets.dart';

class CounterProviderClassScreen  extends ChangeNotifier{
int _number = 0;
int get number => _number;


void addCounter (){
  _number++;
 notifyListeners();
}

void removeCounter (){
  _number--;
  notifyListeners();
}}