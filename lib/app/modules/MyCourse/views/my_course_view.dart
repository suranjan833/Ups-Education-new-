import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../../BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../controllers/my_course_controller.dart';

class MyCourseView extends GetView<MyCourseController> {
  const MyCourseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(MyCourseController());
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
          'My Course',
          style: TextStyle(color: AppColor.black, fontSize: 15.w),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildContain(),
              buildContain(),
              buildContain(),
              buildContain()
            ],
          ),
        ),
      ),
    );
  }

  buildContain() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.r, vertical: 15),
      child: Column(
        children: [
          Container(
            height: 140.h,
            width: 340.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.3YIsfbwJyOkqK96FcspqCwHaE8&pid=Api&P=0"))),
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 240.w,
                child: Text(
                  'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.5.r,
                      color: AppColor.black),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13.r, vertical: 10.r),
                decoration: BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Start Study',
                  style: TextStyle(color: AppColor.white),
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1.4,
          )
        ],
      ),
    );
  }
}
