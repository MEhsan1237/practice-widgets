import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';

class FloatingDraggableWidgetScreen extends StatelessWidget {
  const FloatingDraggableWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("FloatingDraggableWidget"),
        centerTitle: true,
        backgroundColor: Colors.blue,),
      body: FloatingDraggableWidget(mainScreenWidget:SizedBox(height: double.maxFinite,
      width: double.maxFinite,),
          floatingWidget: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.add),backgroundColor: Colors.blue,foregroundColor: Colors.black,),
          floatingWidgetWidth: 50,
          floatingWidgetHeight: 50),
    );
  }
}
