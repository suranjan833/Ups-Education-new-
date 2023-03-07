import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/PasswordReset/views/password_reset_view.dart';

import '../controllers/create_password_controller.dart';

class CreatePasswordView extends GetView<CreatePasswordController> {
  const CreatePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CreatePasswordController());
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
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
                    Text(
                      'Create New Password',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: 19.w,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, bottom: 30.h),
                      child: Text(
                        "Enter the OTP to verify your Email or mobile number",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.6,
                            color: AppColor.black.withOpacity(0.7)),
                      ),
                    ),
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.h,
                        ),
                        child: TextFormField(
                          obscureText: controller.passwordInVisible.value,
                          controller: controller.password,
                          textInputAction: TextInputAction.go,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.passwordInVisible.value =
                                        !controller.passwordInVisible.value;
                                  },
                                  icon: Icon(
                                    controller.passwordInVisible.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  )),
                              prefixIcon: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 2.h, horizontal: 10.w),
                                padding: EdgeInsets.symmetric(
                                    vertical: 7.h, horizontal: 9.w),
                                decoration: BoxDecoration(
                                    color: AppColor.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(7)),
                                child: SvgPicture.asset(
                                  AppImage.lock1,
                                ),
                              ),
                              hintText: 'New Password',
                              filled: true,
                              fillColor: AppColor.white,
                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(12.r),
                                  borderSide:
                                      BorderSide(color: AppColor.white)),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(12.r),
                                  borderSide:
                                      BorderSide(color: AppColor.white))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        controller: controller.cpassword,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            prefixIcon: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 2.h, horizontal: 10.w),
                              padding: EdgeInsets.symmetric(
                                  vertical: 7.h, horizontal: 9.w),
                              decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(7)),
                              child: SvgPicture.asset(
                                AppImage.lock1,
                              ),
                            ),
                            hintText: 'Confirm Password',
                            filled: true,
                            fillColor: AppColor.white,
                            border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(12.r),
                                borderSide: BorderSide(color: AppColor.white)),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(12.r),
                                borderSide: BorderSide(color: AppColor.white))),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: MaterialButton(
                        height: 50.h,
                        minWidth: 90.w,
                        onPressed: () {
                          Get.to(const PasswordResetView());
                        },
                        color: AppColor.apcolor,
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ]))),
    );
  }
}
