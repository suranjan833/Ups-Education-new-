import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/CreatePassword/views/create_password_view.dart';

import '../controllers/verify_otp_controller.dart';

class VerifyOtpView extends GetView<VerifyOtpController> {
  const VerifyOtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(VerifyOtpController());
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
                    'Verify OTP',
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
                  darkRoundedPinPut(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 45.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              controller.forgotPassword();
                            },
                            child: const Text(
                              'Resend OTP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )),
                        MaterialButton(
                          height: 50.h,
                          minWidth: 90.w,
                          onPressed: () {
                            if (controller.pinController.text.isNotEmpty &&
                                (controller.pinController.text.toString() ==
                                    getBox.read(USER_OTP).toString())) {
                              controller.isButtonLoading(true);
                              Timer(const Duration(seconds: 1), () {
                                controller.isButtonLoading(false);
                                Get.off(const CreatePasswordView());
                              });
                            } else {
                              controller.isButtonLoading(true);
                              SHOW_SNACKBAR(
                                  isSuccess: false,
                                  message: 'please enter valid otp');
                              Timer(const Duration(seconds: 2), () {
                                controller.isButtonLoading(false);
                              });
                            }
                          },
                          color: AppColor.apcolor,
                          child: Obx(
                            () => (controller.isButtonLoading.value)
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Done',
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 19),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }

  Widget darkRoundedPinPut() {
    return Pinput(
      defaultPinTheme: PinTheme(
          // margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(color: AppColor.white)),
      closeKeyboardWhenCompleted: true,

      length: 6,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      // enabled: true,
      autofocus: true,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mouseCursor: MouseCursor.uncontrolled,
      controller: controller.pinController,
      pinAnimationType: PinAnimationType.rotation,
    );
  }
}
