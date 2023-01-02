import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_app_bar.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/Internship/views/internship_view.dart';
import 'package:ups_education/app/modules/Workshop/views/workshop_view.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 8),
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
                          color: Colors.red,
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
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.home_outlined,
                    color: AppColor.black.withOpacity(0.6),
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
                minLeadingWidth: 2,
                horizontalTitleGap: 12,
                leading: Container(
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.report_outlined,
                    color: AppColor.black.withOpacity(0.6),
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
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.history_edu,
                    color: AppColor.black.withOpacity(0.6),
                  ),
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
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.school_outlined,
                    color: AppColor.black.withOpacity(0.6),
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
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.school,
                    color: AppColor.black.withOpacity(0.6),
                  ),
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
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.contact_page_outlined,
                    color: AppColor.black.withOpacity(0.6),
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
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: AppColor.litegrey,
                  ),
                  child: Icon(
                    Icons.share_outlined,
                    color: AppColor.black.withOpacity(0.6),
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
                leading: Container(
                  height: 44.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: Colors.red.shade100,
                  ),
                  child: const Icon(
                    Icons.power_settings_new,
                    color: Colors.red,
                  ),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      color: AppColor.black.withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.r),
                ),
              ),
              Padding(
                padding: REdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: REdgeInsets.symmetric(horizontal: 12),
                      height: 28.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.grey),
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      child: const Icon(
                        Icons.facebook_outlined,
                        // size: 30,
                      ),
                    ),
                    Container(
                      margin: REdgeInsets.symmetric(horizontal: 9),
                      height: 28.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.grey),
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      child: const Icon(
                        Icons.g_mobiledata,
                        size: 30,
                      ),
                    ),
                    Container(
                      margin: REdgeInsets.symmetric(horizontal: 8),
                      height: 28.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.grey),
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      child: const Icon(
                        Icons.facebook_outlined,
                        // size: 30,
                      ),
                    ),
                    Container(
                      margin: REdgeInsets.symmetric(horizontal: 12),
                      height: 28.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.grey),
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      child: const Icon(
                        Icons.g_mobiledata,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
