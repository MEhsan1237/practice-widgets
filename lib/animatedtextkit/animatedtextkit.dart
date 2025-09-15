import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextKitScreen extends StatelessWidget {
  const AnimatedTextKitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text Kit"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  "Welcome to the flutter development course",
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  duration: Duration(seconds: 2),
                ),
                ScaleAnimatedText(
                  "Im flutter developer also",
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  duration: Duration(seconds: 2),
                ),
                RotateAnimatedText(
                  "Thanks for the course",
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  duration: Duration(seconds: 2),
                ),

              ],
              pause: Duration(milliseconds: 600),
              stopPauseOnTap: true,
              totalRepeatCount: 100,
              displayFullTextOnTap: true,
            ),
          ],
        ),
      )
    );
  }
}
