import 'package:get/get.dart';

import '../controllers/quiz_start_controller.dart';

class QuizStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizStartController>(
      () => QuizStartController(),
    );
  }
}
