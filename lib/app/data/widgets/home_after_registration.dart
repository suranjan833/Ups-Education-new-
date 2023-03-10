import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_faculty_suggestions.dart';
import 'package:ups_education/app/data/widgets/home_latest_update.dart';
import 'package:ups_education/app/data/widgets/home_our_successful_student.dart';
import 'package:ups_education/app/data/widgets/home_recent_quizz.dart';
import 'package:ups_education/app/data/widgets/home_scroll_video.dart';
import 'package:ups_education/app/data/widgets/home_tetmonial.dart';
import 'package:ups_education/app/data/widgets/self_assessment.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeAfterRegistration extends StatelessWidget {
  const HomeAfterRegistration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(
      () => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: REdgeInsets.symmetric(vertical: 19),
          child: Text(
            'UGC NET JRF & Clinical psychology\nentrance coaching',
            style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
          ),
        ),
        Wrap(
          spacing: 14.w,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceBetween,
          runSpacing: 12.w,
          children: [
            InkWell(
              onTap: () {
                controller.assessment.value == true
                    ? controller.assessment.value = false
                    : controller.assessment.value = true;
              },
              child: Container(
                padding: REdgeInsets.symmetric(horizontal: 15.r, vertical: 9.r),
                decoration: BoxDecoration(
                    color: controller.assessment.value == true
                        ? AppColor.white
                        : AppColor.green,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Text(
                  'Videos',
                  style: TextStyle(
                      color: controller.assessment.value == true
                          ? AppColor.black.withOpacity(0.5)
                          : AppColor.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.assessment.value == true
                    ? controller.assessment.value = false
                    : controller.assessment.value = true;
              },
              child: Container(
                padding: REdgeInsets.symmetric(horizontal: 15.r, vertical: 9.r),
                decoration: BoxDecoration(
                    color: controller.assessment.value == true
                        ? AppColor.green
                        : AppColor.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  'Self assessment',
                  style: TextStyle(
                      color: controller.assessment.value == true
                          ? AppColor.white
                          : AppColor.black.withOpacity(0.5),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              padding: REdgeInsets.symmetric(horizontal: 15.r, vertical: 9.r),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Text(
                'Mock test',
                style: TextStyle(
                    color: AppColor.black.withOpacity(0.5),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: REdgeInsets.symmetric(horizontal: 15.r, vertical: 9.r),
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Text(
                'Practice set',
                style: TextStyle(
                    color: AppColor.black.withOpacity(0.5),
                    fontWeight: FontWeight.w400),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('View all'))
          ],
        ),
        controller.assessment.value == true
            ? const SelfAssessment()
            : SizedBox(
                // height: 500.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeScrollVideo(),
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 19),
                      child: Text(
                        'M.Phil Clinical Psychology Entrance\nCoaching',
                        style: TextStyle(
                            fontSize: 15.w, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: REdgeInsets.symmetric(
                                horizontal: 15.r, vertical: 9.r),
                            decoration: BoxDecoration(
                                color: AppColor.green,
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Text(
                              'Videos',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: REdgeInsets.only(left: 18),
                            padding: REdgeInsets.symmetric(
                                horizontal: 15.r, vertical: 9.r),
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Text(
                              'Mock test',
                              style: TextStyle(
                                  color: AppColor.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {}, child: const Text('View all'))
                        ],
                      ),
                    ),
                    const HomeScrollVideo(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: REdgeInsets.symmetric(vertical: 19),
                          child: Text(
                            'Recent Quizzes',
                            style: TextStyle(
                                fontSize: 15.w, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('View all'))
                      ],
                    ),
                    const HomeRecentQuizze(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: REdgeInsets.symmetric(vertical: 19),
                          child: Text(
                            'Faculty Suggestions:',
                            style: TextStyle(
                                fontSize: 15.w, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('View all'))
                      ],
                    ),
                    const HomeFacultySuggestions(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: REdgeInsets.symmetric(vertical: 19),
                          child: Text(
                            'Latest Updates',
                            style: TextStyle(
                                fontSize: 15.w, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              // Get.to(
                              //     const LatestUpdateView());
                            },
                            child: const Text('View all'))
                      ],
                    ),
                    const HomeLatestUpdate(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: REdgeInsets.symmetric(vertical: 19),
                          child: Text(
                            'Our Successful students',
                            style: TextStyle(
                                fontSize: 15.w, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              // Get.to(
                              //     const OurSuccessfulStudentView());
                            },
                            child: const Text('View all'))
                      ],
                    ),
                    const HomeOurSuccessfulStudent(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: REdgeInsets.symmetric(vertical: 19),
                          child: Text(
                            'Testmonials',
                            style: TextStyle(
                                fontSize: 15.w, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              // Get.to(
                              //     const TestimonialsView());
                            },
                            child: const Text('View all'))
                      ],
                    ),
                    const HomeTestimonials(),
                  ],
                ),
              ),
      ]),
    );
  }
}
