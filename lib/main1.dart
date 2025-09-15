import 'package:flutter/material.dart';
import 'package:packages_app/provider/counterprovider.dart';
import 'package:packages_app/providerclasses/countproviderclass.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProviderClassScreen()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterProviderScreen(),
      ),
    ),

  );
}
