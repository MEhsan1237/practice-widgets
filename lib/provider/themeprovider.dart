import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providerclasses/themeproviderclass.dart';

class ThemeModeScreen extends StatelessWidget {
  const ThemeModeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Consumer<ThemeProviderClass>(
            builder: (context, value, child) {
              return
                 Switch(value: value.themeMode== ThemeMode.dark, onChanged: (val){
                   value.themeChanger(val? ThemeMode.dark: ThemeMode.light);
                 });
            },

          ),
          Consumer<ThemeProviderClass>(
            builder: (context, value, child) {
              return
               Switch(value: value.themeMode== ThemeMode.dark, onChanged: (val){
                 value.themeChanger(val?ThemeMode.dark:ThemeMode.light);
               });
            },

          ),
          Consumer<ThemeProviderClass>(
            builder: (context, value, child) {
              return
               Switch(value: value.themeMode == ThemeMode.dark,  onChanged: (val) {
                 value.themeChanger(val ? ThemeMode.dark : ThemeMode.light);
               });
            },

          ),
        ],
      ),
    );
  }
}
