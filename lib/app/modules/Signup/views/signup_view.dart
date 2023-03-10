// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ups_education/app/data/config/config.dart';

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
              child: Form(
                key: controller.formKey,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter valid first name';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter valid last name';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter correct email address';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !(value.length > 9)) {
                            return 'please enter valid phone number';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter valid address';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter valid pin code';
                          }
                          return null;
                        },
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
                    // GenderList(),
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                        ),
                        child: DropdownButtonFormField(
                          hint: controller.gender == null
                              ? const Text('Select Gender')
                              : Text(
                                  controller.csg.countryStateGenderModel.value
                                      .data!.genders![0].name
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.black.withOpacity(0.6)),
                                ),
                          decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.white)),
                              filled: true,
                              fillColor: AppColor.white),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          isExpanded: true,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(0),
                          iconSize: 30.0,
                          style: const TextStyle(),
                          items: controller
                              .csg.countryStateGenderModel.value.data?.genders
                              ?.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val.name.toString(),
                                child: Text(
                                  val.name.toString(),
                                  style: TextStyle(
                                      color: AppColor.black.withOpacity(0.6),
                                      fontSize: 16),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (newValue) {
                            var data = controller.csg.countryStateGenderModel
                                .value.data?.genders!
                                .where((element) => element.name == newValue)
                                .toList();
                            controller.gender = data?.first.id;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: TextFormField(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime.now(),
                            context: Get.context!,
                          );

                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            controller.dob.text = formattedDate;
                            // controller.formKey.currentState!.validate();
                            controller.dday =
                                controller.dob.text.split("-").last;
                            controller.dyear = formattedDate.split("-").first;
                            controller.dmonth =
                                controller.dob.text.split("-").getRange(1, 2);
                            print(formattedDate.toString());
                            print(controller.dday);
                            print(controller.dmonth);
                            print(controller.dyear);
                          }
                        },
                        keyboardType: TextInputType.datetime,
                        readOnly: true,
                        controller: controller.dob,
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 32,
                            ),
                            filled: true,
                            fillColor: AppColor.white,
                            enabled: true,
                            hintText: "YYYY-MM-DD",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.white)),
                            labelText: 'Date of birth'),
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter password';
                            }
                            return null;
                          },
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
                                  borderSide:
                                      BorderSide(color: AppColor.white))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                      ),
                      child: TextFormField(
                        controller: controller.cpass,
                        obscureText: true,
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

                    Obx(
                      () => Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                        ),
                        child: DropdownButtonFormField(
                          hint: controller.state == null
                              ? const Text('Select State')
                              : Text(
                                  controller.csg.countryStateGenderModel.value
                                      .data!.state![0].name
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.black.withOpacity(0.6)),
                                ),
                          decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.white)),
                              filled: true,
                              fillColor: AppColor.white),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          isExpanded: true,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(0),
                          iconSize: 30.0,
                          style: const TextStyle(),
                          items: controller
                              .csg.countryStateGenderModel.value.data?.state
                              ?.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val.name.toString(),
                                child: Text(
                                  val.name.toString(),
                                  style: TextStyle(
                                      color: AppColor.black.withOpacity(0.6),
                                      fontSize: 16),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (newValue) {
                            var data = controller
                                .csg.countryStateGenderModel.value.data?.state!
                                .where((element) => element.name == newValue)
                                .toList();
                            controller.state = data?.first.id;
                            // print(controller.state);
                          },
                        ),
                      ),
                    ),
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.h,
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.white)),
                              filled: true,
                              fillColor: AppColor.white),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          hint: controller.country == null
                              ? const Text('Select Country')
                              : Text(
                                  controller.csg.countryStateGenderModel.value
                                      .data!.country![0].name
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.black.withOpacity(0.6)),
                                ),
                          isExpanded: true,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(0),
                          iconSize: 30.0,
                          style:
                              TextStyle(color: AppColor.black.withOpacity(0.6)),
                          items: controller
                              .csg.countryStateGenderModel.value.data?.country
                              ?.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val.name.toString(),
                                child: Text(
                                  val.name.toString(),
                                  style: TextStyle(
                                      color: AppColor.black.withOpacity(0.6),
                                      fontSize: 16),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            var data = controller.csg.countryStateGenderModel
                                .value.data?.country!
                                .where((element) => element.name == val)
                                .toList();
                            controller.state = data?.first.id;
                          },
                        ),
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
                          onPressed: () async {
                            if (controller.formKey.currentState!.validate()) {
                              // if (controller.state !=null &&
                              //     controller.gender !=null &&
                              //     controller.country !=null) {
                              if (controller.pass.text ==
                                  controller.cpass.text) {
                                await controller.signUp();
                              } else {
                                SHOW_SNACKBAR(
                                    isSuccess: false,
                                    message:
                                        'password and confirm password is not same');
                              }
                              // } else {
                              //   SHOW_SNACKBAR(
                              //       isSuccess: false,
                              //       message: 'select dropdown field');
                              // }
                            }
                          },
                          color: AppColor.apcolor,
                          child: Obx(
                                      () => (controller
                                              .isButtonLoading.value)
                                          ? const CircularProgressIndicator(
                                              color: Colors.white,
                                            ) : Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
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
          ),
        ));
  }
}
