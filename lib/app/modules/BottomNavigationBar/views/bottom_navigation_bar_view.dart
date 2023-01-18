import 'package:flutter/material.dart';
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
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppImage.home_b),
                  ),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
             BottomNavigationBarItem(
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppImage.my_contact),
                  ),
                label: 'My account',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppImage.cart_b),
                  ),
                label: 'Cart',
              ),
             BottomNavigationBarItem(
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppImage.wishlist),
                  ),
                label: 'Wishlist',
              ),
             BottomNavigationBarItem(
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppImage.updates),
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
        elevation: 1,
        backgroundColor: AppColor.litegrey,
        iconTheme: IconThemeData(
          color: AppColor.apcolor,
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              // padding: REdgeInsets.symmetric(horizontal: 10),
              margin:
                  REdgeInsets.only(left: 12, top: 6, bottom: 6, right: 17).r,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: AppColor.lite),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SvgPicture.asset(
                  AppImage.menubar,
                ),
              ),
            );
          },
        ),
        leadingWidth: 68.w,
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
