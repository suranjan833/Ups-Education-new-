import 'package:get/get.dart';

import '../controllers/suggested_videos_controller.dart';

class SuggestedVideosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuggestedVideosController>(
      () => SuggestedVideosController(),
    );
  }
}
