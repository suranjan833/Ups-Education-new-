// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/quiz_result_controller.dart';

class QuizResultView extends GetView<QuizResultController> {
  const QuizResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(QuizResultController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: InkWell(
            onTap: () {
              Get.back();
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
          child: Column(
        children: [
          Container(
            color: AppColor.green.withOpacity(0.1),
            // height: 810.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Topic:',
                    style: TextStyle(color: AppColor.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Human Development'),
                      CircleAvatar(
                        backgroundColor: AppColor.white,
                        radius: 20,
                        child: const Icon(
                          Icons.share_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            'Ajay Kumar',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13.w),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            '8/10',
                            style: TextStyle(
                                color: AppColor.green,
                                fontSize: 30.w,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text('Your marks'),
                        ],
                      ), //
                      // CircleAvatar(
                      //   radius: 60.r,
                      //   backgroundColor: const Color.fromARGB(255, 146, 40, 32),
                      //   child:
                      Image(
                          height: 100.h,
                          width: 150.w,
                          fit: BoxFit
                              .fill, //TODO UI PROBLEM DOES NOT LOAD AppImage.goal
                          image: const NetworkImage(
                              "https://webstockreview.net/images/goal-clipart-goal-target-9.png")),
                      // )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 9.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: AppColor.green),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 5.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 12.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColor.white,
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.w),
                              ),
                            ),
                            Text(
                              'Wrong\nanswers',
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 12.w),
                            ),
                          ],
                        ),
                        Container(
                          height: 72.h,
                          width: 0.5.w,
                          color: AppColor.white.withOpacity(0.7),
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 5.r,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 12.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColor.white,
                              ),
                              child: Text(
                                '8',
                                style: TextStyle(
                                    color: AppColor.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.w),
                              ),
                            ),
                            Text(
                              'Correct\nanswers',
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 12.w),
                            ),
                          ],
                        ),
                        Container(
                          height: 72.h,
                          width: 0.6.w,
                          color: AppColor.white,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 5.r,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 12.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColor.white,
                              ),
                              child: Text(
                                '0',
                                style: TextStyle(
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.w),
                              ),
                            ),
                            Text(
                              'Unattempted\nquestions',
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 12.w),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UPS Education',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              color: AppColor.apcolor,
                              fontSize: 24.9.w,
                              fontWeight: FontWeight.bold),
                        ),
                        Wrap(
                          spacing: 5,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          children: [
                            Text(
                              'A unit of',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: AppColor.black,
                                  fontSize: 10.w,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Utsaah Psychological Services',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: AppColor.green,
                                  fontSize: 10.r,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.r, vertical: 4.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {
                      controller.buildFilter();
                    },
                    icon: SvgPicture.asset(
                      AppImage.filter,
                      height: 35.h,
                    ),
                    label: Text(
                      'Questions',
                      style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                    )),
                Obx(
                  () => InkWell(
                    onTap: () {
                      controller.collapse.value == true
                          ? controller.collapse.value = false
                          : controller.collapse.value = true;
                    },
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,
                      spacing: 8.w,
                      children: [
                        Text(
                          controller.collapse.value == true
                              ? 'Collapse'
                              : 'Expand',
                          style:
                              TextStyle(color: AppColor.black.withOpacity(0.9)),
                        ),
                        Container(
                          padding: EdgeInsets.all(7.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColor.grey.withOpacity(0.1)),
                          child: Icon(
                            controller.collapse.value == true
                                ? Icons.remove
                                : Icons.add,
                            color: AppColor.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1.3,
          ),
          Expanded(
            child: Obx(
              () => controller.collapse.value == true
                  ? controller.customExpandCollapse()
                  : const SizedBox(),
            ),
          ),
        ],
      )),
    );
  }
}
