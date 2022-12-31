import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/ChangePassword/views/change_password_view.dart';
import 'package:ups_education/app/modules/EditProfile/views/edit_profile_view.dart';
import 'package:ups_education/app/modules/MyCourse/views/my_course_view.dart';

import '../controllers/my_account_controller.dart';

class MyAccountView extends GetView<MyAccountController> {
  const MyAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MyAccountController());
    return Scaffold(
        backgroundColor: AppColor.black,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100.h,
                    width: 95.w,
                    margin: REdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://tse2.mm.bing.net/th?id=OIP.PZsMLTIgXaEsdCA0VjTo7gHaLH&pid=Api&P=0"))),
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
                    height: 20.h,
                  )
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 400.9.h,
                width: 360.w,
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
                              height: 44.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: AppColor.litegrey,
                              ),
                              child: Icon(
                                Icons.school_outlined,
                                color: AppColor.purple,
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
                              height: 44.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: AppColor.litegrey,
                              ),
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.amber.shade300,
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
                    builList(
                        'Change Password',
                        Icon(
                          Icons.key,
                          color: AppColor.black,
                          size: 20,
                        ), ontap: () {
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
                      leading: Container(
                          height: 34.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.red.shade100,
                          ),
                          child: const Icon(
                            Icons.power_settings_new_outlined,
                            color: Colors.red,
                            size: 22,
                          )),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 15.r, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }

  builList(String title, Widget leading, {void Function()? ontap}) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 45.h,
        width: 360.w,
        child: ListTile(
          leading: Container(
              height: 34.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColor.litegrey,
              ),
              child: leading),
          title: Text(
            title,
            style: TextStyle(fontSize: 15.r, fontWeight: FontWeight.w400),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.red,
            size: 15,
          ),
        ),
      ),
    );
  }
}
