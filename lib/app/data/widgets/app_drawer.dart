// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_app_bar.dart';
import 'package:ups_education/app/modules/AboutUs/views/about_us_view.dart';
import 'package:ups_education/app/modules/ContactUs/views/contact_us_view.dart';
import 'package:ups_education/app/modules/Internship/views/internship_view.dart';
import 'package:ups_education/app/modules/Workshop/views/workshop_view.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    controller.getHomePageData();
    return Scaffold(
      body: Obx(
        () => Drawer(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              child:
                  //  Obx(
                  //   () =>
                  Column(
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
                  Obx(
                    () => Padding(
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
                              // Obx(
                              //   () =>
                              Text(
                                controller.homeviewModel.value.data!
                                            .firstname !=
                                        null
                                    ? "${controller.homeviewModel.value.data!.firstname} ${controller.homeviewModel.value.data!.lastname}"
                                    : "Ajay Otta",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.r),
                              ),
                              // ),
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
                  ),
                  ListTile(
                    onTap: () {
                      Get.back();
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
                      controller
                              .homeviewModel.value.data?.sidebarmenu![0].name ??
                          "Home",
                      style: TextStyle(
                          color: AppColor.black.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.r),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const AboutUsView());
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
                        AppImage.about,
                      ),
                    ),
                    title: Text(
                      controller
                              .homeviewModel.value.data?.sidebarmenu![1].name ??
                          "About Us",
                      style: TextStyle(
                          color: AppColor.black.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.r),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
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
                    // title: Text(
                    //   controller
                    //           .homeviewModel.value.data?.sidebarmenu![3].name ??
                    //       "Psychology Entrance",
                    //   style: TextStyle(
                    //       color: AppColor.black.withOpacity(0.7),
                    //       fontWeight: FontWeight.w400,
                    //       fontSize: 14.r),
                    // ),
                    title: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField<String>(
                        hint: Text(
                            "${controller.allCategoryModel.value.data?[1].name}"),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        isExpanded: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColor.white))),
                        dropdownColor: AppColor.white,
                        value: controller
                            .allCategoryModel.value.data![1].child![0].name
                            .toString(),
                        items: controller.allCategoryModel.value.data?[1].child!
                            .map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            onTap: () {},
                            enabled: true,
                            alignment: Alignment.centerLeft,
                            value: value.name.toString(),
                            child: Text(
                              value.name.toString(),
                              style: TextStyle(
                                  color: AppColor.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.r),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          var data = controller
                              .allCategoryModel.value.data?[1].child!
                              .where((element) => element.name == newValue)
                              .toList();
                          controller.categoryItem = data![0].name;
                        },
                      ),
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
                        AppImage.workshop,
                      ),
                    ),
                    title: Text(
                      controller.allCategoryModel.value.data?[0].name ??
                          "Workshops",
                      style: TextStyle(
                          color: AppColor.black.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.r),
                    ),
                    onTap: () {
                      Get.to(const WorkshopView(), arguments: {
                        "id": controller.allCategoryModel.value.data?[0].id
                            .toString()
                      });
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
                      "Internship",
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
                    onTap: () {
                      Get.to(const ContactUsView());
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
                        GestureDetector(
                          onTap: () async {
                            var instaurl = controller
                                .homeviewModel.value.data?.instagramlink;
                            if (await canLaunch(instaurl!)) {
                              await launch(instaurl);
                            }
                          },
                          child: Container(
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
                        ),
                        GestureDetector(
                          onTap: () async {
                            var facebookurl = controller
                                .homeviewModel.value.data?.facebooklink;
                            if (await canLaunch(facebookurl!)) {
                              await launch(facebookurl);
                            }
                          },
                          child: Container(
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
                        ),
                        GestureDetector(
                          onTap: () async {
                            var linkedinurl = controller
                                .homeviewModel.value.data?.linkedinlink;
                            if (await canLaunch(linkedinurl!)) {
                              await launch(linkedinurl);
                            }
                          },
                          child: Container(
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
                        ),
                        GestureDetector(
                          onTap: () async {
                            var youtubeUrl = controller
                                .homeviewModel.value.data?.twitterlink;
                            if (await canLaunch(youtubeUrl!)) {
                              await launch(youtubeUrl);
                            }
                          },
                          child: Container(
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // ),
    );
  }

  // Future<void> llaunchUrl() async {
  //   if (!await launchUrl(url)) {
  //     throw Exception('Could not launch $url');
  //   }
  // }
}
