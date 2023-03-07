import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/Login/views/login_view.dart';

import '../controllers/password_reset_controller.dart';

class PasswordResetView extends GetView<PasswordResetController> {
  const PasswordResetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(PasswordResetController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 19.sp,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.offAll(BottomNavigationBarView());
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 20.h, bottom: 40.h),
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 8.w),
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(18)),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    SvgPicture.asset(
                      AppImage.check,
                      height: 80.h,
                      width: 130.w,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Password Reset',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: 19.w,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, bottom: 30.h),
                      child: Text(
                        "Your password has been reset successfully",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.6,
                            color: AppColor.black.withOpacity(0.7)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const LoginView());
                      },
                      child: Card(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Log in again",
                          style: TextStyle(
                              color: AppColor.black.withOpacity(0.8),
                              fontSize: 16),
                        ),
                      )),
                    )
                  ]))),
    );
  }
}
