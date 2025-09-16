import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providerclasses/buttontoggleproviderclass.dart';


class ToggleButtonScreen extends StatelessWidget {
  const ToggleButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ButtonToggleProviderClass>(context);
    return  Scaffold(
      appBar: AppBar(title: Text("Toggle Button"),),
      body: Center(
        child:
         Consumer<ButtonToggleProviderClass>(builder: (context, value, child) {
           return
             ElevatedButton(onPressed: (){
               value.toggleButton(value);

             }, child: Text(value.isLogin? "LogOut":"LogIn"));
         },)
      ),
    );
  }
}
