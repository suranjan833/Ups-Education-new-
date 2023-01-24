import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/ChangePassword/views/change_password_view.dart';
import 'package:ups_education/app/modules/EditProfile/views/edit_profile_view.dart';
import 'package:ups_education/app/modules/MyCourse/views/my_course_view.dart';

import '../controllers/my_account_controller.dart';

class MyAccountView extends GetView<MyAccountController> {
  const MyAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(MyAccountController());
    return Scaffold(
        backgroundColor: AppColor.black,
        body: SingleChildScrollView(
          child: Obx(
            () => controller.myAccountModel.value.data?.userdata != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100.h,
                            width: 95.w,
                            margin: REdgeInsets.only(
                                top: 20, bottom: 10, left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                                borderRadius: BorderRadius.circular(13.r),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(controller
                                        .myAccountModel
                                        .value
                                        .data!
                                        .userdata!
                                        .image
                                        .toString()))),
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                radius: 14.r,
                                backgroundColor: AppColor.white,
                                child: const Icon(
                                  Icons.mode_edit_outline_outlined,
                                  color: Colors.red,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Hello! ${controller.myAccountModel.value.data!.userdata!.firstname} ${controller.myAccountModel.value.data!.userdata!.lastname}",
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.7.r),
                          ),
                          SizedBox(
                            height: 10.h,
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 390.h,
                        width: 360.w,
                        margin: EdgeInsets.only(top: 30.h),
                        padding: REdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29.r),
                                topRight: Radius.circular(29.r))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 60.h,
                                  width: 160.w,
                                  child: ListTile(
                                    leading: Container(
                                        height: 40.h,
                                        width: 40.w,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.w, vertical: 7.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: AppColor.litegrey,
                                        ),
                                        child: Image.network(
                                            "${controller.myAccountModel.value.data!.totalcourse!.icon}")),
                                    title: Text(
                                      '${controller.myAccountModel.value.data!.totalcourse!.totalcount}',
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(
                                      '${controller.myAccountModel.value.data!.totalcourse!.title}',
                                      maxLines: 1,
                                      style: TextStyle(color: AppColor.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60.h,
                                  width: 175.w,
                                  child: ListTile(
                                    leading: Container(
                                        height: 40.h,
                                        width: 40.w,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.w, vertical: 7.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: AppColor.litegrey,
                                        ),
                                        child: Image.network(
                                            "${controller.myAccountModel.value.data!.totalwishlistcourses!.icon}")),
                                    title: Text(
                                      '${controller.myAccountModel.value.data!.totalwishlistcourses!.totalcount}',
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500),
                                      maxLines: 2,
                                    ),
                                    subtitle: Text(
                                      '${controller.myAccountModel.value.data!.totalwishlistcourses!.title}',
                                      maxLines: 1,
                                      style: TextStyle(color: AppColor.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 1.8,
                            ),
                            builList(
                                'My Course',
                                Icon(
                                  Icons.note_alt_outlined,
                                  color: AppColor.black,
                                  size: 20,
                                ), ontap: () {
                              Get.to(const MyCourseView());
                            }),
                            builList(
                                'Edit Profile',
                                Icon(
                                  Icons.person_add_alt,
                                  color: AppColor.black,
                                  size: 20,
                                ), ontap: () {
                              Get.to(const EditProfileView());
                            }),
                            builList('Change Password',
                                SvgPicture.asset(AppImage.key), ontap: () {
                              Get.to(const ChangePasswordView());
                            }),
                            builList(
                                'My Report',
                                Icon(
                                  Icons.report_problem_outlined,
                                  color: AppColor.black,
                                  size: 20,
                                )),
                            ListTile(
                              leading: SvgPicture.asset(AppImage.logout),
                              title: Text(
                                'Logout',
                                style: TextStyle(
                                    fontSize: 15.r,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100.h,
                            width: 95.w,
                            margin: REdgeInsets.only(
                                top: 20, bottom: 10, left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                                borderRadius: BorderRadius.circular(13.r),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(AppImage.home_banner))),
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                radius: 14.r,
                                backgroundColor: AppColor.white,
                                child: const Icon(
                                  Icons.mode_edit_outline_outlined,
                                  color: Colors.red,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Hello! Ajay Kumar',
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.7.r),
                          ),
                          SizedBox(
                            height: 10.h,
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 390.h,
                        width: 360.w,
                        margin: EdgeInsets.only(top: 30.h),
                        padding: REdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29.r),
                                topRight: Radius.circular(29.r))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 60.h,
                                  width: 160.w,
                                  child: ListTile(
                                    leading: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7.w, vertical: 7.h),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: AppColor.litegrey,
                                      ),
                                      child: SvgPicture.asset(
                                        AppImage.course,
                                        height: 20.h,
                                      ),
                                    ),
                                    title: Text(
                                      '04',
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(
                                      'Total Courses',
                                      style: TextStyle(color: AppColor.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60.h,
                                  width: 175.w,
                                  child: ListTile(
                                    leading: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7.w, vertical: 7.h),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: AppColor.litegrey,
                                      ),
                                      child: SvgPicture.asset(
                                        AppImage.course,
                                        height: 20.h,
                                      ),
                                    ),
                                    title: Text(
                                      '04',
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(
                                      'Wishlist Courses',
                                      style: TextStyle(color: AppColor.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 1.8,
                            ),
                            builList(
                                'My Course',
                                Icon(
                                  Icons.note_alt_outlined,
                                  color: AppColor.black,
                                  size: 20,
                                ), ontap: () {
                              Get.to(const MyCourseView());
                            }),
                            builList(
                                'Edit Profile',
                                Icon(
                                  Icons.person_add_alt,
                                  color: AppColor.black,
                                  size: 20,
                                ), ontap: () {
                              Get.to(const EditProfileView());
                            }),
                            builList('Change Password',
                                SvgPicture.asset(AppImage.key), ontap: () {
                              Get.to(const ChangePasswordView());
                            }),
                            builList(
                                'My Report',
                                Icon(
                                  Icons.report_problem_outlined,
                                  color: AppColor.black,
                                  size: 20,
                                )),
                            ListTile(
                              leading: SvgPicture.asset(AppImage.logout),
                              title: Text(
                                'Logout',
                                style: TextStyle(
                                    fontSize: 15.r,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ));
  }

  builList(String title, Widget leading, {void Function()? ontap}) {
    return InkWell(
        onTap: ontap,
        child: Row(
          children: [
            SizedBox(
              width: 13.w,
            ),
            Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColor.litegrey,
                ),
                child: leading),
            SizedBox(
              width: 17.w,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 15.r, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.red,
              size: 15,
            ),
          ],
        ));
  }
}
