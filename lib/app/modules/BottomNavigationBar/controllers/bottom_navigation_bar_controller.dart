import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class BottomNavigationBarController extends GetxController {
  var tabIndex = 0.obs;
  //  NotificationService notificationService = NotificationService();

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  var refreshController = RefreshController();
  var homeController = Get.put(HomeController());

  @override
  void onInit() {
    homeController.getHomePageData();
    //  notificationService.requestNotificationPermission();
    // notificationService.firebaseInit(Get.context!);
    // notificationService.setupInteractMessage(Get.context!);
    // // notificationService.isTokenRefresh();
    // notificationService.getDeviceToken().then((value) {
    //   log("device Token");
    //   log(value.toString());
    // });

    super.onInit();
  }
}
