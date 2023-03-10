import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/appcolor.dart';

import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  const ContactUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(ContactUsController());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColor.black,
            )),
        backgroundColor: AppColor.white,
        title: Text(
          'About Us',
          style: TextStyle(color: AppColor.black),
        ),
        // centerTitle: true,
      ),
      body: const Center(
          // child: WebViewWidget(
          //   controller: controller.controller,
          // ),
          ),
    );
  }
}
