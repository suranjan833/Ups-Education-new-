import 'package:get/get.dart';

import '../controllers/free_notes_controller.dart';

class FreeNotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreeNotesController>(
      () => FreeNotesController(),
    );
  }
}
