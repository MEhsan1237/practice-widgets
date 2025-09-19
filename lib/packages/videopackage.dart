import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPackageScreen extends StatefulWidget {
  const VideoPackageScreen({super.key});

  @override
  State<VideoPackageScreen> createState() => _VideoPackageScreenState();
}

class _VideoPackageScreenState extends State<VideoPackageScreen> {
  late VideoPlayerController controller;

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset("assets/videos/video1.mp4");
    controller.initialize();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: Stack(
                alignment: Alignment.bottomCenter,
                children: [VideoPlayer(controller),

              VideoProgressIndicator(controller, allowScrubbing: true,
              colors: VideoProgressColors(
                backgroundColor: Colors.grey,
                playedColor: Colors.red,
                bufferedColor: Colors.white
              ),)

            ]),
          ),
           Row(
             mainAxisAlignment:  MainAxisAlignment.center,
             children: [
             IconButton(
               onPressed: () async{
                 Duration current = controller.value.position;

                 await  controller.seekTo(current - Duration(seconds: 10));


               },
               icon:
                 Icon(Icons.replay_10)
             ),
             IconButton(
               onPressed: ()async {
                 if (controller.value.isPlaying) {
                 await  controller.pause();
                 } else {
                 await  controller.play();
                 }
                 setState(() {

                 });
               },
               icon:
               Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow),

             ),
             IconButton(
                 onPressed: () async{
                   Duration current = controller.value.position;

                   await  controller.seekTo(current + Duration(seconds: 10));


                 },
                 icon:
                 Icon(Icons.forward_10)
             ),


           ],)
        ],
      ),
    );
  }
}
