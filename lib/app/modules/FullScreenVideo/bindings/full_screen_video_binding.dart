import 'package:get/get.dart';

import '../controllers/full_screen_video_controller.dart';

class FullScreenVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FullScreenVideoController>(
      () => FullScreenVideoController(),
    );
  }
}
