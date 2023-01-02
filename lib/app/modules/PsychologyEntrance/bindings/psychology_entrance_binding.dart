import 'package:get/get.dart';

import '../controllers/psychology_entrance_controller.dart';

class PsychologyEntranceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PsychologyEntranceController>(
      () => PsychologyEntranceController(),
    );
  }
}
