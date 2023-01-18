import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/QuizResult/views/quiz_result_view.dart';
import 'package:ups_education/app/modules/QuizStart/views/quiz_start_view.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(QuizController());
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
          'Quiz',
          style: TextStyle(color: AppColor.black, fontSize: 15.w),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // height: 810.h,
          padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 12.r),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  horizontalTitleGap: 4,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.r, horizontal: 3.r),
                  title: Text(
                    'UPS Education Testing',
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w500),
                  ),
                  leading: SvgPicture.asset(AppImage.quiz),
                  subtitle: Wrap(
                    spacing: 10,
                    children: [
                      Text(
                        '5 Questions',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '20 min',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                    ],
                  ),
                  trailing: Container(
                    margin: EdgeInsets.all(8.r),
                    padding:
                        EdgeInsets.symmetric(vertical: 3.r, horizontal: 4.r),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: TextButton.icon(
                        onPressed: () {
                          Get.to(const QuizResultView());
                        },
                        icon: Icon(
                          Icons.visibility,
                          size: 18,
                          color: AppColor.green,
                        ),
                        label: Text(
                          'View Result',
                          style:
                              TextStyle(color: AppColor.green, fontSize: 12.w),
                        )),
                  ),
                ),
                const Divider(
                  thickness: 1.7,
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.r, horizontal: 3.r),
                  title: Text(
                    'Personality Test',
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w500),
                  ),
                  leading: SvgPicture.asset(AppImage.quiz),
                  subtitle: Wrap(
                    spacing: 10,
                    children: [
                      Text(
                        '5 Questions',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '20 min',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                    ],
                  ),
                  trailing: Container(
                    margin: EdgeInsets.all(8.r),
                    padding:
                        EdgeInsets.symmetric(vertical: 3.r, horizontal: 4.r),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: TextButton.icon(
                        onPressed: () {
                          Get.to(const QuizStartView());
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: AppColor.green,
                        ),
                        label: Text(
                          'Start',
                          style:
                              TextStyle(color: AppColor.green, fontSize: 12.w),
                        )),
                  ),
                ),
                const Divider(
                  thickness: 1.7,
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.r, horizontal: 3.r),
                  title: Text(
                    'Research Method and State',
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w500),
                  ),
                  leading: SvgPicture.asset(AppImage.quiz),
                  subtitle: Wrap(
                    spacing: 10,
                    children: [
                      Text(
                        '5 Questions',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '20 min',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                    ],
                  ),
                  trailing: Container(
                    margin: EdgeInsets.all(8.r),
                    padding:
                        EdgeInsets.symmetric(vertical: 3.r, horizontal: 4.r),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: TextButton.icon(
                        onPressed: () {
                          Get.to(const QuizStartView());
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: AppColor.green,
                        ),
                        label: Text(
                          'Start',
                          style:
                              TextStyle(color: AppColor.green, fontSize: 12.w),
                        )),
                  ),
                ),
                const Divider(
                  thickness: 1.7,
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.r, horizontal: 3.r),
                  title: Text(
                    'Human Development',
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14.r,
                        fontWeight: FontWeight.w500),
                  ),
                  leading: SvgPicture.asset(AppImage.quiz),
                  subtitle: Wrap(
                    spacing: 10,
                    children: [
                      Text(
                        '5 Questions',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                      Text(
                        '20 min',
                        style: TextStyle(color: AppColor.black, fontSize: 12.w),
                      ),
                    ],
                  ),
                  trailing: Container(
                    margin: EdgeInsets.all(8.r),
                    padding:
                        EdgeInsets.symmetric(vertical: 3.r, horizontal: 4.r),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: TextButton.icon(
                        onPressed: () {
                          Get.to(const QuizStartView());
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: AppColor.green,
                        ),
                        label: Text(
                          'Start',
                          style:
                              TextStyle(color: AppColor.green, fontSize: 12.w),
                        )),
                  ),
                ),
                const Divider(
                  thickness: 1.7,
                ),
              ]),
        ),
      )),
    );
  }
}
