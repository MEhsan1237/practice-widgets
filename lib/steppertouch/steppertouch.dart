import 'package:flutter/material.dart';
import 'package:stepper_touch/stepper_touch.dart';


class StepperTouchScreen extends StatelessWidget {
  const StepperTouchScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Stepper Touch"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: StepperTouch(
          buttonsColor: Colors.black,
            counterColor: Colors.red,
            withSpring: false,
            direction: Axis.vertical,
            initialValue: 0, // Starting value
            onChanged: (value) {
              print("Current value: $value");}
        )
      ),
    );
  }
}
