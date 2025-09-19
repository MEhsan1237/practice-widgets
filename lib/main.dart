import 'package:flutter/material.dart';
import 'package:packages_app/packages/videopackage.dart';
import 'package:packages_app/scratcher/scratcher.dart';
import 'package:packages_app/steppertouch/steppertouch.dart';

import 'animatedtextkit/animatedtextkit.dart';
import 'floatingdraggablewidget/floatingdraggablewidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VideoPackageScreen(),
  ));
}