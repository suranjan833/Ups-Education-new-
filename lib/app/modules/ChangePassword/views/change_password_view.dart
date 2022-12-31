import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../../BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(ChangePasswordController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: InkWell(
            onTap: () {
              Get.to(BottomNavigationBarView());
            },
            child: CircleAvatar(
              backgroundColor: AppColor.litegrey,
              radius: 16,
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColor.black,
                size: 18,
              ),
            ),
          ),
        ),
        title: Text(
          'Change Password',
          style: TextStyle(color: AppColor.black, fontSize: 15.w),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 12.r),
            child: Obx(
              () => Column(
                children: [
                  TextFormField(
                    obscureText: controller.obscureText1.value,
                    keyboardType: TextInputType.streetAddress,
                    controller: controller.password,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 12.r, vertical: 2.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.r, vertical: 13.r),
                            decoration: BoxDecoration(
                                color: AppColor.litegrey,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(Icons.lock_outline_sharp)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: AppColor.black.withOpacity(0.3))),
                        hintText: 'Current Password',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: AppColor.litegrey,
                            child: InkWell(
                              onTap: controller.toggle1,
                              child: Icon(
                                controller.obscureText1.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: AppColor.black.withOpacity(0.3)))),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  TextFormField(
                    obscureText: controller.obscureText2.value,
                    keyboardType: TextInputType.streetAddress,
                    controller: controller.npassword,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 12.r, vertical: 2.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.r, vertical: 13.r),
                            decoration: BoxDecoration(
                                color: AppColor.litegrey,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(Icons.lock_outline_sharp)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: AppColor.black.withOpacity(0.3))),
                        hintText: 'New Password',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: AppColor.litegrey,
                            child: InkWell(
                              onTap: controller.toggle2,
                              child: Icon(
                                controller.obscureText2.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColor.grey,
                              ),
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: AppColor.black.withOpacity(0.3)))),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextFormField(
                    obscureText: controller.obscureText3.value,
                    keyboardType: TextInputType.text,
                    controller: controller.cpassword,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        prefixIcon: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 12.r, vertical: 2.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.r, vertical: 13.r),
                            decoration: BoxDecoration(
                                color: AppColor.litegrey,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(Icons.lock_outline_sharp)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: AppColor.black.withOpacity(0.3))),
                        hintText: 'Confirm Password',
                        // suffixIcon: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: CircleAvatar(
                        //     radius: 17,
                        //     backgroundColor: AppColor.litegrey,
                        //     child: InkWell(
                        //       onTap: controller.toggle3,
                        //       child: Icon(
                        //         controller.obscureText3.value
                        //             ? Icons.visibility
                        //             : Icons.visibility_off,
                        //         color: AppColor.grey,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                                color: AppColor.black.withOpacity(0.3)))),
                  ),
                  SizedBox(
                    height: 250.h,
                  ),
                  Wrap(
                    spacing: 40,
                    children: [
                      MaterialButton(
                        height: 50,
                        minWidth: 150,
                        onPressed: () {},
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.red)),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.r),
                        ),
                      ),
                      MaterialButton(
                        height: 50,
                        minWidth: 150,
                        onPressed: () {},
                        color: AppColor.green,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColor.green)),
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.r),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
