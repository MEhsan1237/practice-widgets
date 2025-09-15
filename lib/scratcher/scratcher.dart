import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';



class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Scratcher App"),
        backgroundColor: Colors.blue,
        centerTitle: true,),
      body: Scratcher(
          brushSize: 10,
          threshold: 30,
          color: Colors.black87,
          onChange: (value) => print("Scratch progress: $value%"),
          onThreshold: () => print("Threshold reached, you won!"),

          child: Align(

            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width *.2,
              height: MediaQuery.of(context).size.width*.2 ,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("Hello Brother edwerwqrwrr3")),
            ),
          )),
    );
  }
}
