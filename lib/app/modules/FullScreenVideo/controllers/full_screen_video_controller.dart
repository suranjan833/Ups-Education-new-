import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

class FullScreenVideoController extends GetxController {
 late YoutubePlayerController controller;
 late String videoID;
  late String title;


  @override
  void onInit() {
    super.onInit();
     controller = YoutubePlayerController(
      initialVideoId: videoID,
      params: const YoutubePlayerParams(
        startAt: const Duration(seconds: 1),
        autoPlay: true,
        desktopMode: false,
        showControls: true,
        enableCaption: false,
        showFullscreenButton: true,
        privacyEnhanced: true,
      ),
    );
    controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

}
