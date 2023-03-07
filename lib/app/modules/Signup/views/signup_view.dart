// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/VerifyOtp/views/verify_otp_view.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignupController());
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 17.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 22.h,
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 10.w),
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
                    'Create New Account',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 19.w,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      "Enter the email or mobile associated with your account and we will send you a OTP to reset your password",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.5,
                          color: AppColor.black.withOpacity(0.7)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: TextFormField(
                      controller: controller.fname,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: 'First Name',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: TextFormField(
                      controller: controller.lname,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: 'Last Name',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
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
                          hintText: 'Email',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: TextFormField(
                      controller: controller.mobile,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: TextFormField(
                      controller: controller.address,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: 'Address',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: TextFormField(
                      controller: controller.pin,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: 'Pin Code',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white)),
                          filled: true,
                          fillColor: AppColor.white),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: controller.gender == null
                          ? const Text('Dropdown')
                          : Text(
                              controller.gender,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                      isExpanded: true,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(0),
                      iconSize: 30.0,
                      style: const TextStyle(),
                      items: ['Male', 'Female'].map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(
                              val,
                              style: TextStyle(
                                  color: AppColor.black.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        controller.gender = val!;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      controller: controller.dob,
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime.now(),
                                  context: Get.context!,
                                );

                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  controller.dob.text = formattedDate;
                                  // controller.formKey.currentState!
                                  //     .validate();
                                }
                              },
                              child: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 32,
                              )),
                          filled: true,
                          fillColor: AppColor.white,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white)),
                          hintText: 'Date of birth'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter your birth date";
                        }
                        return null;
                      },
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                      ),
                      child: TextFormField(
                        obscureText: controller.passwordInVisible.value,
                        controller: controller.pass,
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
                            hintText: 'Password',
                            filled: true,
                            fillColor: AppColor.white,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.white))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: TextFormField(
                      controller: controller.cpass,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          enabled: true,
                          filled: true,
                          fillColor: AppColor.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white)),
                          filled: true,
                          fillColor: AppColor.white),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: controller.state == null
                          ? const Text('Dropdown')
                          : Text(
                              controller.state,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                      isExpanded: true,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(0),
                      iconSize: 30.0,
                      style: const TextStyle(),
                      items: [
                        'Odisha',
                        'Uttar Pradesh',
                        'West Bangal',
                        'Chhatisgarh',
                        'Madhya Pradesh',
                        'Goa',
                        'Mumbai',
                        'Delhi',
                        'Uttarkhand'
                      ].map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(
                              val,
                              style: TextStyle(
                                  color: AppColor.black.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        controller.state = val!;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white)),
                          filled: true,
                          fillColor: AppColor.white),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: controller.country == null
                          ? const Text('Dropdown')
                          : Text(
                              controller.country,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                      isExpanded: true,
                      alignment: Alignment.bottomRight,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(0),
                      iconSize: 30.0,
                      style: TextStyle(color: AppColor.black.withOpacity(0.6)),
                      items: [
                        'India',
                        'China',
                        'USA',
                        'Uk',
                        'Japan',
                        'Brazil',
                        'Nepan',
                        'Bhupan',
                        'Pakistan',
                        'Srilanka'
                      ].map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(
                              val,
                              style: TextStyle(
                                  color: AppColor.black.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        controller.country = val!;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.agree.value,
                          activeColor: AppColor.green,
                          hoverColor: AppColor.green,
                          onChanged: (value) {
                            controller.agree.value = value ?? false;
                          },
                        ),
                      ),
                      Wrap(
                        spacing: 6,
                        children: [
                          Text(
                            'Accept',
                            style: TextStyle(
                                letterSpacing: 0.7,
                                fontSize: 15,
                                color: AppColor.black.withOpacity(0.7),
                                fontWeight: FontWeight.normal),
                          ),
                          const Text(
                            'Terms and Conditions',
                            style: TextStyle(
                                letterSpacing: 0.7,
                                fontSize: 15,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0.sp),
                    child: Center(
                      child: MaterialButton(
                        height: 50.h,
                        minWidth: 120.w,
                        onPressed: () {
                          Get.to(const VerifyOtpView());
                          // if (controller.email.text.isNotEmpty &&
                          //     controller.password.text.isNotEmpty) {
                          //   getBox.write(USER_EMAIL, controller.email.text);
                          //   controller.login();
                          // } else {
                          //   SHOW_SNACKBAR(isSuccess: false, message: 'fields are empty');
                          // }
                        },
                        color: AppColor.apcolor,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'All the data is the copyrights of © Utsaah Psychological Services Private Limited. You can not publish, save and copy content including Questions, Explanations, Videos in any format.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 0.4,
                        fontSize: 14,
                        color: AppColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
