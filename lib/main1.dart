import 'package:flutter/material.dart';
import 'package:packages_app/provider/themeprovider.dart';
import 'package:packages_app/providerclasses/buttontoggleproviderclass.dart';
import 'package:packages_app/providerclasses/countproviderclass.dart';
import 'package:packages_app/providerclasses/sliderproviderclass.dart';
import 'package:packages_app/providerclasses/themeproviderclass.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProviderClassScreen()),
        ChangeNotifierProvider(create: (_)=> SliderProviderClassScreen()),
        ChangeNotifierProvider(create: (_)=>ButtonToggleProviderClass()),
        ChangeNotifierProvider(create: (_)=>ThemeProviderClass()),
      ],
      child: Builder(
        builder: (context) {
          final provider = Provider.of<ThemeProviderClass>(context,listen: false);
          print("hiiiiee");
          return

          MaterialApp(
            themeMode:
            provider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark
            ),
            debugShowCheckedModeBanner: false,
            home: ThemeModeScreen(),
          );
        }
      )
    ),

  );
}
