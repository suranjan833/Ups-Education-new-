import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_app_bar.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/Internship/views/internship_view.dart';
import 'package:ups_education/app/modules/Login/views/login_view.dart';
import 'package:ups_education/app/modules/Workshop/views/workshop_view.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: REdgeInsets.only(left: 8, right: 8, top: 20),
                  child: const HomeAppBar(),
                ),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 11, vertical: 7),
                  child: Divider(
                    thickness: 1.5,
                    height: 20.h,
                  ),
                ),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 6,
                        children: [
                          Text(
                            'Hello!',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17.r),
                          ),
                          Text(
                            'Ajay Kumar',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w400,
                                fontSize: 15.r),
                          ),
                        ],
                      ),
                      Text(
                        'UTS-19-6798',
                        style: TextStyle(
                            color: Colors.red.withOpacity(0.7),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.r),
                      )
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(BottomNavigationBarView());
                  },
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    child: SvgPicture.asset(
                      AppImage.home,
                    ),
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const LoginView());
                  },
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    child: Icon(
                      Icons.login,
                      color: AppColor.black.withOpacity(0.6),
                    ),
                  ),
                  title: Text(
                    'Login',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    child: SvgPicture.asset(
                      AppImage.about,
                    ),
                  ),
                  title: Text(
                    'About us',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    //TODO UI PROBLEM IMAGE DOES NOT LOAD
                    child: SvgPicture.asset(
                        AppImage.workshop), //AppImage.internship
                  ),
                  title: Text(
                    'Psychology Entrance',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                ),
                ListTile(
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    child: SvgPicture.asset(
                      AppImage.workshop,
                    ),
                  ),
                  title: Text(
                    'Workshops',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                  onTap: () {
                    Get.to(const WorkshopView());
                  },
                ),
                ListTile(
                  onTap: () {
                    Get.to(const InternshipView());
                  },
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    //TODO UI PROBLEM IMAGE DOES NOT LOAD
                    child: SvgPicture.asset(
                        'assets/image/workshop.svg'), //internship.svg
                  ),
                  title: Text(
                    'Intership',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                  // height: 40,
                ),
                ListTile(
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    child: SvgPicture.asset(
                      AppImage.headphone,
                    ),
                  ),
                  title: Text(
                    'Contact us',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: Container(
                    height: 42.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: AppColor.litegrey,
                    ),
                    child: SvgPicture.asset(
                      AppImage.share,
                    ),
                  ),
                  title: Text(
                    'Share app',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 2,
                  horizontalTitleGap: 12,
                  leading: SvgPicture.asset(AppImage.logout,
                      height: 40.h, width: 40.w),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.r),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: REdgeInsets.symmetric(vertical: 13, horizontal: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: REdgeInsets.symmetric(horizontal: 12),
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: SvgPicture.asset(
                          AppImage.insta,
                        ),
                      ),
                      Container(
                        margin: REdgeInsets.symmetric(horizontal: 9),
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: SvgPicture.asset(
                          AppImage.facebook,
                        ),
                      ),
                      Container(
                        margin: REdgeInsets.symmetric(horizontal: 8),
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: SvgPicture.asset(
                          AppImage.linkdin,
                        ),
                      ),
                      Container(
                        margin: REdgeInsets.symmetric(horizontal: 12),
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: SvgPicture.asset(
                          AppImage.youtube,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
