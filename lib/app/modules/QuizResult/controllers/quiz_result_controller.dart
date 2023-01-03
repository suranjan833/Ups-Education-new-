import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/appcolor.dart';

class QuizResultController extends GetxController {
  RxBool collapse = false.obs;
  buildFilter() {
    Get.bottomSheet(
        isDismissible: false,
        Container(
          height: 330.h,
          padding: EdgeInsets.symmetric(vertical: 17.r, horizontal: 19.r),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.r),
                  topRight: Radius.circular(18.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search filter',
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.w),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.close,
                      color: AppColor.black,
                      size: 24.w,
                    ),
                  )
                ],
              ),
              Text(
                'Categories',
                style: TextStyle(color: AppColor.black, fontSize: 13.w),
              ),
              Wrap(
                spacing: 18.w,
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 12.w,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: REdgeInsets.symmetric(
                          horizontal: 17.r, vertical: 13.r),
                      decoration: BoxDecoration(
                          color: AppColor.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(13.r)),
                      child: Text(
                        'All',
                        style: TextStyle(
                            color: AppColor.black.withOpacity(0.8),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: REdgeInsets.symmetric(
                          horizontal: 15.r, vertical: 13.r),
                      decoration: BoxDecoration(
                          color: AppColor.black.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: Text(
                        'Wrong answers',
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: REdgeInsets.symmetric(
                          horizontal: 15.r, vertical: 13.r),
                      decoration: BoxDecoration(
                          color: AppColor.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(13.r)),
                      child: Text(
                        'Correct answers',
                        style: TextStyle(
                            color: AppColor.black.withOpacity(0.8),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: REdgeInsets.symmetric(
                          horizontal: 15.r, vertical: 13.r),
                      decoration: BoxDecoration(
                          color: AppColor.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Text(
                        'Unattempted questions',
                        style: TextStyle(
                            color: AppColor.black.withOpacity(0.8),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    height: 50.h,
                    minWidth: 140.w,
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.r),
                        borderSide:
                            BorderSide(color: AppColor.black.withOpacity(0.8))),
                    child: Text(
                      'Clear all',
                      style: TextStyle(
                          color: AppColor.black.withOpacity(0.9),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.r),
                    ),
                  ),
                  MaterialButton(
                    height: 50.h,
                    minWidth: 140.w,
                    onPressed: () {},
                    color: AppColor.green,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.r),
                        borderSide: BorderSide(color: AppColor.green)),
                    child: Text(
                      'Apply filter',
                      style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.r),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget customExpandCollapse() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildexpandCollapse(
            questionNumber: '01',
            answerNumber: '02',
            question:
                'A types of interaction refers to a situation in which the effects of two independent variables are enhanced by each other. Which of the below-mentioned is the correct type?',
            isRight1: false,
            isWrong1: true,
            isRight2: true,
            isWrong2: false,
            option1: 'Reinforced interaction.',
            option2: 'Celling-effect interaction',
          ),
          buildexpandCollapse(
            questionNumber: '02',
            answerNumber: '02',
            question:
                'Which of the following statements about aging populations is CORRECT?',
            isRight1: true,
            isWrong1: false,
            isRight2: false,
            isWrong2: true,
            option1: 'Men outnumber women in aged groups.',
            option2: 'Celling-effect interaction',
          ),
          buildexpandCollapse(
            questionNumber: '03',
            answerNumber: '02',
            question:
                'Which of the following statements about aging population is Correct?',
            isRight1: false,
            isWrong1: false,
            isRight2: true,
            isWrong2: false,
            option1: 'Mortality rate is lower in men than women.',
            option2: 'Again population rate is increased',
          ),
        ],
      ),
    );
  }

  Widget buildexpandCollapse({
    String? questionNumber,
    String? answerNumber,
    String? question,
    bool? isWrong1,
    bool? isRight1,
    bool? isWrong2,
    bool? isRight2,
    String? option1,
    String? option2,
    // String? option3,
  }) {
    return Container(
      padding: EdgeInsets.all(16.r),
      margin: EdgeInsets.symmetric(vertical: 6.r, horizontal: 4.r),
      color: AppColor.grey.withOpacity(0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Question: $questionNumber',
                style: TextStyle(
                    fontSize: 13.w, color: AppColor.black.withOpacity(0.5)),
              ),
              Text(
                '$answerNumber Mark',
                style: TextStyle(
                    fontSize: 13.w, color: AppColor.black.withOpacity(0.5)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.r),
            child: Text(
              question!,
              style: TextStyle(fontSize: 14.w, color: AppColor.black),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.w,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.r,
                ),
                padding: EdgeInsets.symmetric(vertical: 7.r, horizontal: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isWrong1 == true
                      ? Colors.red
                      : isRight1 == true
                          ? AppColor.green
                          : AppColor.black.withOpacity(0.5),
                ),
                child: Text(
                  'a',
                  style: TextStyle(color: AppColor.white, fontSize: 15.r),
                ),
              ),
              Text(
                option1!,
                style: TextStyle(
                    color: isWrong1 == true
                        ? Colors.red
                        : isRight1 == true
                            ? AppColor.green
                            : AppColor.black.withOpacity(0.5),
                    fontSize: 13.r),
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.w,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 5.r,
                ),
                padding: EdgeInsets.symmetric(vertical: 7.r, horizontal: 10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: isWrong2 == true
                      ? Colors.red
                      : isRight2 == true
                          ? AppColor.green
                          : AppColor.black.withOpacity(0.5),
                ),
                child: Text(
                  'b',
                  style: TextStyle(color: AppColor.white, fontSize: 15.r),
                ),
              ),
              Text(
                option2!,
                style: TextStyle(
                    color: isWrong2 == true
                        ? Colors.red
                        : isRight2 == true
                            ? AppColor.green
                            : AppColor.black.withOpacity(0.5),
                    fontSize: 13.r),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
