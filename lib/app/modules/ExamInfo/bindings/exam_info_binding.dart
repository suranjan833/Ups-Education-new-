import 'package:get/get.dart';

import '../controllers/exam_info_controller.dart';

class ExamInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExamInfoController>(
      () => ExamInfoController(),
    );
  }
}
