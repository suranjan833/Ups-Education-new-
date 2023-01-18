import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColor.focolor,
      body: SafeArea(
          child: Center(
        child: Container(
          height: 300.h,
          width: 300.w,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 18.w),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Login',
                style: TextStyle(color: AppColor.black, fontSize: 19.w),
              ),
              TextFormField(
                controller: controller.email,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    enabled: true,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: AppColor.grey)),
                    fillColor: AppColor.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: AppColor.grey))),
              ),
              TextFormField(
                obscureText: true,
                controller: controller.password,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    filled: true,
                    fillColor: AppColor.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: AppColor.grey)),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: AppColor.grey))),
              ),
              SizedBox(
                height: 10.h,
              ),
              MaterialButton(
                height: 50.h,
                minWidth: 140.w,
                onPressed: () {
                  if (controller.email.text.isNotEmpty &&
                      controller.password.text.isNotEmpty) {
                    getBox.write(USER_EMAIL, controller.email.text);
                    getBox.write(LOGIN_TRUE, true);
                    Get.to(BottomNavigationBarView());
                  } else {
                    SHOW_SNACKBAR(
                        isSuccess: false, message: 'fields are empty');
                  }
                },
                color: AppColor.green,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r),
                    borderSide: BorderSide(color: AppColor.green)),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.w),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
