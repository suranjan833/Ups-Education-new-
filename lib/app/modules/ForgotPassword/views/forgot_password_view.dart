import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ForgotPasswordController());
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
                      'Forgot Password',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: 19.w,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, bottom: 30.h),
                      child: Text(
                        "Enter the email or mobile associated with your account and we will send you a OTP to reset your password",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.6,
                            color: AppColor.black.withOpacity(0.7)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                      ),
                      child: TextFormField(
                        controller: controller.email,
                        textInputAction: TextInputAction.go,
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
                                AppImage.user,
                              ),
                            ),
                            hintText: 'Email or Mobile Number',
                            enabled: true,
                            filled: true,
                            border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(12.r),
                                borderSide: BorderSide(color: AppColor.white)),
                            fillColor: AppColor.white,
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
                          controller.forgotPassword();
                        },
                        color: AppColor.apcolor,
                        child: Obx(
                                      () => (controller
                                              .isButtonLoading.value)
                                          ? const CircularProgressIndicator(
                                              color: Colors.white,
                                            ) : Text(
                          'Send OTP',
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                     ) ),
                  ]))),
    );
  }
}
