import 'package:get/get.dart';

import '../controllers/workshop_details_controller.dart';

class WorkshopDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkshopDetailsController>(
      () => WorkshopDetailsController(),
    );
  }
}
