import 'package:get/get.dart';

import '../controllers/internship_controller.dart';

class InternshipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternshipController>(
      () => InternshipController(),
    );
  }
}
