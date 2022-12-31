import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../../BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(EditProfileController());
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
          'Edit Profile',
          style: TextStyle(color: AppColor.black, fontSize: 15.w),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 810.h,
            padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 12.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: controller.fname,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'First Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3))),
                      // contentPadding: EdgeInsets.symmetric(
                      //   horizontal: 25.r,
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3)))),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: controller.lname,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'Last Name',
                      // contentPadding: EdgeInsets.symmetric(
                      //   horizontal: 25.r,
                      // ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3)))),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.email,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      // contentPadding: EdgeInsets.symmetric(
                      //   horizontal: 25.r,
                      // ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3)))),
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: controller.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3))),
                      // contentPadding: EdgeInsets.symmetric(
                      //   horizontal: 25.r,
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3)))),
                ),
                Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    width: Get.width,
                    height: 55.h,
                    // margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.r, horizontal: 9.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: AppColor.litegrey),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColor.black,
                              size: 40,
                            )),
                        value: controller.gender.value,
                        items: [
                          'Select Gender',
                          'Male',
                          'Female',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            alignment: Alignment.centerLeft,
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          controller.gender.value = newValue!;
                        },
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    width: Get.width,
                    height: 55.h,
                    // margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.r, horizontal: 9.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: AppColor.litegrey),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColor.black,
                              size: 40,
                            )),
                        value: controller.dob.value,
                        items: [
                          'Date of Birth',
                          '2000',
                          '1900',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            alignment: Alignment.centerLeft,
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          controller.dob.value = newValue!;
                        },
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  controller: controller.address,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3))),
                      hintText: 'Address',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3)))),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller.pincode,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      hintText: 'Pin Code',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.3)))),
                ),
                Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    width: Get.width,
                    height: 55.h,
                    // margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.r, horizontal: 9.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: AppColor.litegrey),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColor.black,
                              size: 40,
                            )),
                        value: controller.state.value,
                        items: [
                          'Select State',
                          'Jarkhand',
                          'West Bangal',
                          'Mumbai',
                          'Delhi',
                          'Goa',
                          'Aasam',
                          'Hariyana',
                          'Rajasthan',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            alignment: Alignment.centerLeft,
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          controller.state.value = newValue!;
                        },
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    width: Get.width,
                    height: 55.h,
                    // margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.r, horizontal: 9.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: AppColor.litegrey),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColor.black,
                              size: 40,
                            )),
                        value: controller.country.value,
                        items: [
                          'Select Country',
                          'India',
                          'Chin',
                          'Pakistan',
                          'Nepal',
                          'USA',
                          'UK',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            alignment: Alignment.centerLeft,
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          controller.country.value = newValue!;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                MaterialButton(
                  height: 50.h,
                  minWidth: 170.w,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide:
                          BorderSide(color: AppColor.green.withOpacity(0.3))),
                  onPressed: () {},
                  color: AppColor.green,
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.r),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
