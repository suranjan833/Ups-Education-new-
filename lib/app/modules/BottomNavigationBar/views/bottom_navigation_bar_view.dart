import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/app_drawer.dart';
import 'package:ups_education/app/data/widgets/home_app_bar.dart';
import 'package:ups_education/app/modules/Cart/views/cart_view.dart';
import 'package:ups_education/app/modules/MyAccount/views/my_account_view.dart';
import 'package:ups_education/app/modules/Wishlist/views/wishlist_view.dart';

import '../../home/views/home_view.dart';
import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  BottomNavigationBarView({Key? key}) : super(key: key);
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.8),
      fontWeight: FontWeight.w400,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w400, fontSize: 13);
  buildBottomNavigationMenu(context, bcontroller) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 65,
          child: BottomNavigationBar(
            elevation: 10,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: bcontroller.changeTabIndex,
            currentIndex: bcontroller.tabIndex.value,
            backgroundColor: AppColor.white,
            unselectedItemColor: Colors.black38.withOpacity(0.5),
            selectedItemColor: AppColor.green,
            iconSize: 24,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: const Icon(
                    Icons.home_filled,
                  ),
                ),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: const Icon(
                    Icons.person,
                  ),
                ),
                label: 'My account',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: const Icon(
                    Icons.shopping_cart_rounded,
                  ),
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: const Icon(
                    Icons.bookmark,
                  ),
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: const Icon(
                    Icons.update,
                  ),
                ),
                label: 'updates',
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarController controller =
        Get.put<BottomNavigationBarController>(BottomNavigationBarController(),
            permanent: false);
    return Scaffold(
      drawer: const Drawer(
        child: AppDrawer(),
      ),
      bottomNavigationBar: buildBottomNavigationMenu(context, controller),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColor.litegrey,
        iconTheme: IconThemeData(
          color: AppColor.apcolor,
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              padding: REdgeInsets.symmetric(horizontal: 10),
              margin: REdgeInsets.only(left: 20, top: 5, bottom: 5).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ScreenUtil().radius(10)),
                  color: AppColor.lite),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  size: 30,
                  color: AppColor.black,
                ),
              ),
            );
          },
        ),
        leadingWidth: ScreenUtil().setWidth(72),
        actions: const [HomeAppBar()],
      ),
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              HomeView(),
              MyAccountView(),
              CartView(),
              WishlistView(),
              HomeView(),
            ],
          )),
    );
  }
}
