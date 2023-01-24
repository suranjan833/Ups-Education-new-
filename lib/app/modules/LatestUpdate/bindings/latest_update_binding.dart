import 'package:get/get.dart';

import '../controllers/latest_update_controller.dart';

class LatestUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LatestUpdateController>(
      () => LatestUpdateController(),
    );
  }
}
