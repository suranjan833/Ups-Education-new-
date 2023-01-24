import 'package:get/get.dart';

import '../controllers/our_successful_student_controller.dart';

class OurSuccessfulStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OurSuccessfulStudentController>(
      () => OurSuccessfulStudentController(),
    );
  }
}
