import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/ForgotPassword/views/forgot_password_view.dart';
import 'package:ups_education/app/modules/Signup/views/signup_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginController());
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        body: Column(
          children: [
            Container(
              width: Get.width,
              height: 237.h,
              decoration: BoxDecoration(
                  color: AppColor.apcolor,
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(AppImage.banner))),
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              'Welcome back!',
              style: TextStyle(
                  color: AppColor.black,
                  fontSize: 19.w,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 4),
              child: Text(
                "Login with your data that you entered during registration",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 0.5,
                    color: AppColor.black.withOpacity(0.7)),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
              child: TextFormField(
                controller: controller.email,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                    prefixIcon: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                      padding:
                          EdgeInsets.symmetric(vertical: 7.h, horizontal: 9.w),
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
            Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                child: TextFormField(
                  obscureText: controller.passwordInVisible.value,
                  controller: controller.password,
                  textInputAction: TextInputAction.done,
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
                        margin:
                            EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                        padding:
                            EdgeInsets.symmetric(vertical: 7.h, horizontal: 9.w),
                        decoration: BoxDecoration(
                            color: AppColor.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(7)),
                        child: SvgPicture.asset(
                          AppImage.lock1,
                        ),
                      ),
                      hintText: 'Password',
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
            ),
            InkWell(
              onTap: () {
                Get.to(const ForgotPasswordView());
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: 6.h, bottom: 19.h, left: 15.w, right: 15.w),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: AppColor.black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0.sp),
              child: MaterialButton(
                height: 50.h,
                minWidth: Get.width,
                onPressed: () {
                  if (controller.email.text.isNotEmpty &&
                      controller.password.text.isNotEmpty) {
                    getBox.write(USER_EMAIL, controller.email.text);
                    controller.login();
                  } else {
                    SHOW_SNACKBAR(isSuccess: false, message: 'fields are empty');
                  }
                },
                color: AppColor.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Center(
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: AppColor.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: 5,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      letterSpacing: 0.4,
                      color: AppColor.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                InkWell(
                  onTap: () {
                    Get.to(const SignupView());
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(color: AppColor.apcolor_dark, fontSize: 17),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Future<bool> showExitPopup(context) async {
    return await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 60.h,
                      width: 180.w,
                      fit: BoxFit.fill,
                      image: AssetImage(AppImage.logo)),
                  const Text("Do you want to exit?"),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            exit(0);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.apcolor),
                          child: const Text("Yes"),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text("No",
                            style: TextStyle(color: Colors.black)),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
