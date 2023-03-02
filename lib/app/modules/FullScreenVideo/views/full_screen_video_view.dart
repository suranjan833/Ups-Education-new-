// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

import '../controllers/full_screen_video_controller.dart';

class FullScreenVideoView extends GetView<FullScreenVideoController> {
  const FullScreenVideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var videoId;
    var controllerr = Get.put(FullScreenVideoController());
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      controller: controllerr.controller,
      child: Scaffold(
        appBar: AppBar(
          actions: const [],
          title: Text(controllerr.title),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ListView(
              children: [
                Stack(
                  children: const [
                    player,
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
