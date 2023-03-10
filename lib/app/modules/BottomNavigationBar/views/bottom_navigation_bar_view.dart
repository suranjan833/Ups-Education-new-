import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/app_drawer.dart';
import 'package:ups_education/app/modules/Cart/views/cart_view.dart';
import 'package:ups_education/app/modules/MyAccount/views/my_account_view.dart';
import 'package:ups_education/app/modules/Notification/views/notification_view.dart';
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
          height: 95.sp,
          child: BottomNavigationBar(
            elevation: 3,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: bcontroller.changeTabIndex,
            currentIndex: bcontroller.tabIndex.value,
            backgroundColor: AppColor.white,
            unselectedItemColor: Colors.black38.withOpacity(0.5),
            selectedItemColor: AppColor.green,
            iconSize: 20,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 20,
                  AssetImage(AppImage.home_b),
                ),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 20,
                  AssetImage(AppImage.my_contact),
                ),
                label: 'My account',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 20,
                  AssetImage(AppImage.cart_b),
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 20,
                  AssetImage(AppImage.wishlist),
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 20,
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
    var controller = Get.put<BottomNavigationBarController>(
        BottomNavigationBarController(),
        permanent: false);
    controller.homeController.getHomePageData();
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
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
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 18.w, top: 5.h, bottom: 5.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UPS Education',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: AppColor.apcolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 5,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Text(
                        'A unit of',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: AppColor.black,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Utsaah Psychological Services',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.orange,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        body: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              HomeView(),
              // NotificationView(),
              MyAccountView(),
              CartView(),
              WishlistView(),
              NotificationView()
            ],
          ),
        ),
      ),
    );
  }
  
  Future<bool> showExitPopup(context) async {
    return await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 60.h,
                      width: 180.w,
                      fit: BoxFit.fill,
                      image: AssetImage(AppImage.logo)),
                  const Text("Do you want to exit?"),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            exit(0);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.apcolor),
                          child: const Text("Yes"),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text("No",
                            style: TextStyle(color: Colors.black)),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
