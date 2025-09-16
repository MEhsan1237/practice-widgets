import 'package:flutter/material.dart';
import 'package:packages_app/provider/counterprovider.dart';
import 'package:packages_app/provider/sliderprovider.dart';
import 'package:packages_app/provider/togglebuttonprovider.dart';
import 'package:packages_app/providerclasses/buttontoggleproviderclass.dart';
import 'package:packages_app/providerclasses/countproviderclass.dart';
import 'package:packages_app/providerclasses/sliderproviderclass.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProviderClassScreen()),
        ChangeNotifierProvider(create: (_)=> SliderProviderClassScreen()),
        ChangeNotifierProvider(create: (_)=>ButtonToggleProviderClass())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  ToggleButtonScreen(),
      ),
    ),

  );
}
