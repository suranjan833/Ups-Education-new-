// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_faculty_suggestions.dart';
import 'package:ups_education/app/data/widgets/home_features_course.dart';
import 'package:ups_education/app/data/widgets/home_free_notes.dart';
import 'package:ups_education/app/data/widgets/home_latest_update.dart';
import 'package:ups_education/app/data/widgets/home_our_successful_student.dart';
import 'package:ups_education/app/data/widgets/home_recent_quizz.dart';
import 'package:ups_education/app/data/widgets/home_suggested_videos.dart';
import 'package:ups_education/app/data/widgets/home_tetmonial.dart';
import 'package:ups_education/app/data/widgets/self_assessment.dart';
import 'package:ups_education/app/modules/ExamInfo/views/exam_info_view.dart';
import 'package:ups_education/app/modules/FreeNotes/views/free_notes_view.dart';
import 'package:ups_education/app/modules/Live/views/live_view.dart';
import 'package:ups_education/app/modules/PsychologyEntrance/views/psychology_entrance_view.dart';
import 'package:ups_education/app/modules/Quiz/views/quiz_view.dart';
import 'package:ups_education/app/modules/Search/views/search_view.dart';
import 'package:ups_education/app/modules/Workshop/views/workshop_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    controller.getHomePageData();
    return Scaffold(
        backgroundColor: AppColor.litegrey,
        body: SingleChildScrollView(
          child: Container(
            margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child:
                 Obx(
                  () =>
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: EdgeInsets.only(top: 14.h, bottom: 5.h),
                    child: TextFormField(
                      readOnly: true,
                      onTap: () {
                        Get.to(const SearchView());
                      },
                      decoration: InputDecoration(
                        focusColor: AppColor.white,
                        hoverColor: AppColor.white,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 16.w),
                        hintText: 'What do you want to learn?',
                        suffixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: AppColor.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.white),
                            borderRadius: BorderRadius.circular(15.r)),
                      ),
                    ),
                  ),
                  scrollablePage(),
                  Padding(
                    padding: REdgeInsets.symmetric(vertical: 17),
                    child: Text(
                      'Explore categories',
                      style: TextStyle(
                          fontSize: 16.w, fontWeight: FontWeight.w500),
                    ),
                  ),
                  categoryCard(),
                  // //start   before registrations page
                  // getBox.read(USER_ID) == null
                  //     ? Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Suggested Videos',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const SuggestedVideosView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeSuggestedVideos(),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Free Notes',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const FreeNotesView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeFreeNotes(),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Featured Course',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const MyCourseView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeFeatureCourse(),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Recent Quizzes',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const QuizView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeRecentQuizze(),
                  //           Container(
                  //             margin: EdgeInsets.only(top: 14.h),
                  //             color: AppColor.apcolor,
                  //             child: Image(
                  //                 color: Colors.amber,
                  //                 height: 150.h,
                  //                 width: 400.w,
                  //                 fit: BoxFit.fill,
                  //                 image: AssetImage(AppImage.home_banner)),
                  //           ),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Latest Updates',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const LatestUpdateView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeLatestUpdate(),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Our Successful Students',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const OurSuccessfulStudentView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeOurSuccessfulStudent(),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Padding(
                  //                 padding: REdgeInsets.symmetric(vertical: 19),
                  //                 child: Text(
                  //                   'Testmonials',
                  //                   style: TextStyle(
                  //                       fontSize: 15.w,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ),
                  //               TextButton(
                  //                   onPressed: () {
                  //                     // Get.to(const TestimonialsView());
                  //                   },
                  //                   child: const Text('View all'))
                  //             ],
                  //           ),
                  //           const HomeTestimonials(),
                  //         ],
                  //       )
                    
                      // :
                      //   //  //end before registeation page
                      //    //start after register page
                      // Obx(
                      //     () =>
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: REdgeInsets.symmetric(vertical: 19),
                                  child: Text(
                                    'UGC NET JRF & Clinical psychology\nentrance coaching',
                                    style: TextStyle(
                                        fontSize: 15.w,
                                        fontWeight: FontWeight.w500),
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
                                            ? controller.assessment.value =
                                                false
                                            : controller.assessment.value =
                                                true;
                                      },
                                      child: Container(
                                        padding: REdgeInsets.symmetric(
                                            horizontal: 15.r, vertical: 9.r),
                                        decoration: BoxDecoration(
                                            color:
                                                controller.assessment.value ==
                                                        true
                                                    ? AppColor.white
                                                    : AppColor.green,
                                            borderRadius:
                                                BorderRadius.circular(12.r)),
                                        child: Text(
                                          'Videos',
                                          style: TextStyle(
                                              color:
                                                  controller.assessment.value ==
                                                          true
                                                      ? AppColor.black
                                                          .withOpacity(0.5)
                                                      : AppColor.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.assessment.value == true
                                            ? controller.assessment.value =
                                                false
                                            : controller.assessment.value =
                                                true;
                                      },
                                      child: Container(
                                        padding: REdgeInsets.symmetric(
                                            horizontal: 15.r, vertical: 9.r),
                                        decoration: BoxDecoration(
                                            color:
                                                controller.assessment.value ==
                                                        true
                                                    ? AppColor.green
                                                    : AppColor.white,
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Text(
                                          'Self assessment',
                                          style: TextStyle(
                                              color:
                                                  controller.assessment.value ==
                                                          true
                                                      ? AppColor.white
                                                      : AppColor.black
                                                          .withOpacity(0.5),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: REdgeInsets.symmetric(
                                          horizontal: 15.r, vertical: 9.r),
                                      decoration: BoxDecoration(
                                          color: AppColor.white,
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Text(
                                        'Mock test',
                                        style: TextStyle(
                                            color:
                                                AppColor.black.withOpacity(0.5),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      padding: REdgeInsets.symmetric(
                                          horizontal: 15.r, vertical: 9.r),
                                      decoration: BoxDecoration(
                                          color: AppColor.white,
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Text(
                                        'Practice set',
                                        style: TextStyle(
                                            color:
                                                AppColor.black.withOpacity(0.5),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('View all'))
                                  ],
                                ),
                                controller.assessment.value == true
                                    ? const SelfAssessment()
                                    : SizedBox(
                                        // height: 500.h,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            scrollVideo(),
                                            Padding(
                                              padding: REdgeInsets.symmetric(
                                                  vertical: 19),
                                              child: Text(
                                                'M.Phil Clinical Psychology Entrance\nCoaching',
                                                style: TextStyle(
                                                    fontSize: 15.w,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Padding(
                                              padding: REdgeInsets.symmetric(
                                                  vertical: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    padding:
                                                        REdgeInsets.symmetric(
                                                            horizontal: 15.r,
                                                            vertical: 9.r),
                                                    decoration: BoxDecoration(
                                                        color: AppColor.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    12.r)),
                                                    child: Text(
                                                      'Videos',
                                                      style: TextStyle(
                                                          color: AppColor.white,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: REdgeInsets.only(
                                                        left: 18),
                                                    padding:
                                                        REdgeInsets.symmetric(
                                                            horizontal: 15.r,
                                                            vertical: 9.r),
                                                    decoration: BoxDecoration(
                                                        color: AppColor.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.r)),
                                                    child: Text(
                                                      'Mock test',
                                                      style: TextStyle(
                                                          color: AppColor.black
                                                              .withOpacity(0.5),
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  TextButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                          'View all'))
                                                ],
                                              ),
                                            ),
                                            scrollVideo(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      REdgeInsets.symmetric(
                                                          vertical: 19),
                                                  child: Text(
                                                    'Recent Quizzes',
                                                    style: TextStyle(
                                                        fontSize: 15.w,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                TextButton(
                                                    onPressed: () {},
                                                    child:
                                                        const Text('View all'))
                                              ],
                                            ),
                                            const HomeRecentQuizze(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      REdgeInsets.symmetric(
                                                          vertical: 19),
                                                  child: Text(
                                                    'Faculty Suggestions:',
                                                    style: TextStyle(
                                                        fontSize: 15.w,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                TextButton(
                                                    onPressed: () {},
                                                    child:
                                                        const Text('View all'))
                                              ],
                                            ),
                                            const HomeFacultySuggestions(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      REdgeInsets.symmetric(
                                                          vertical: 19),
                                                  child: Text(
                                                    'Latest Updates',
                                                    style: TextStyle(
                                                        fontSize: 15.w,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                TextButton(
                                                    onPressed: () {
                                                      // Get.to(
                                                      //     const LatestUpdateView());
                                                    },
                                                    child:
                                                        const Text('View all'))
                                              ],
                                            ),
                                            const HomeLatestUpdate(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      REdgeInsets.symmetric(
                                                          vertical: 19),
                                                  child: Text(
                                                    'Our Successful students',
                                                    style: TextStyle(
                                                        fontSize: 15.w,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                TextButton(
                                                    onPressed: () {
                                                      // Get.to(
                                                      //     const OurSuccessfulStudentView());
                                                    },
                                                    child:
                                                        const Text('View all'))
                                              ],
                                            ),
                                            const HomeOurSuccessfulStudent(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      REdgeInsets.symmetric(
                                                          vertical: 19),
                                                  child: Text(
                                                    'Testmonials',
                                                    style: TextStyle(
                                                        fontSize: 15.w,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                TextButton(
                                                    onPressed: () {
                                                      // Get.to(
                                                      //     const TestimonialsView());
                                                    },
                                                    child:
                                                        const Text('View all'))
                                              ],
                                            ),
                                            const HomeTestimonials(),
                                          ],
                                        ),
                                      ),
                              ]),
                        // )

                  // //end after registration page
                ]),
          ),
        )
        )
        );
  }

  Widget scrollablePage() {
    return
    //  Obx(
    //   () => 
      controller.homeviewModel.value.data?.allbanner != null
          ? Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r)),
                    height: 145.h,
                    // width: 255.w,
                    margin: EdgeInsets.symmetric(vertical: 5.h),

                    // pageviews
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: controller.pageController,
                      itemCount: controller
                          .homeviewModel.value.data?.allbanner?.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 140.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.r),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(controller.homeviewModel
                                    .value.data!.allbanner![index].image
                                    .toString()),
                              )),
                        );
                      },
                    )),
                SmoothPageIndicator(
                  axisDirection: Axis.horizontal,
                  controller: controller.pageController,
                  count: controller.homeviewModel.value.data!.allbanner!.length,
                  effect: SlideEffect(
                      spacing: 2,
                      radius: 3,
                      dotWidth: 27,
                      dotHeight: 4,
                      activeDotColor: AppColor.apcolor),
                )
              ],
            )
          : const Center(child: CircularProgressIndicator()
          // ),
    );
  }

  Widget categoryCard() {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 1, vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCat('Quiz', AppColor.focolor, AppImage.quiz, ontap: () {
                Get.to(const QuizView());
              }),
              buildCat('Course', AppColor.greenaa, AppImage.course, ontap: () {
                Get.to(const PsychologyEntranceView());
              }),
              buildCat('Workshop', AppColor.focolor, AppImage.workshop_h,
                  ontap: () {
                Get.to(const WorkshopView());
              }),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCat('Free Notes', AppColor.greenaa, AppImage.notes,
                  ontap: () {
                Get.to(const FreeNotesView());
              }),
              buildCat('Exam info', AppColor.focolor, AppImage.examinfo,
                  ontap: () {
                Get.to(const ExamInfoView());
              }),
              buildCat('Live', AppColor.greenaa, AppImage.live, ontap: () {
                Get.to(const LiveView());
              }),
            ],
          ),
        ],
      ),
    );
  }

  buildCat(String title, Color color, String image, {void Function()? ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 87.w,
        height: 100.h,
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 19.r,
              backgroundColor: AppColor.white,
              child: SvgPicture.asset(height: 30.h, width: 30.w, image),
            ),
            Expanded(
              child: SizedBox(
                height: 40.h,
                width: 190.w,
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    // maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.5.w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget scrollVideo() {
    return 
    // Obx(
    //   () =>
       controller.suggestedVideoModel.value.data != null
          ? SizedBox(
              height: 145.h,
              width: 428.w,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.suggestedVideoModel.value.data?.length,
                  itemBuilder: (context, index) {
                    var data =
                        controller.suggestedVideoModel.value.data![index];
                    return InkWell(
                      onTap: () async {
                        var videoUrl = data.videourl.toString();
                        if (await canLaunch(videoUrl)) {
                          await launch(videoUrl);
                        }
                      },
                      child: SizedBox(
                        height: 135.h,
                        width: 235.w,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.w),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 85.h,
                                    width: 230.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.r),
                                          topRight: Radius.circular(10.r),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                data.image.toString()))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.h, horizontal: 18.w),
                                    child: Text(
                                      data.name.toString(),
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 14.w,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: REdgeInsets.only(right: 20, top: 40),
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    AppColor.greenaa.withOpacity(0.4),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: AppColor.white,
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 25.w,
                                    color: AppColor.green,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          : const Center(child: CircularProgressIndicator()
          // ),
    );
  }

  buildVideoScroll() {
    return SizedBox(
      height: 155.h,
      width: 235.w,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(17.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 95.h,
                  width: 230.w,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17.r),
                        topRight: Radius.circular(17.r),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImage.home_banner))),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.h, horizontal: 18.w),
                  child: Text(
                    'Introduction To Psychology MA/Msc 2023',
                    maxLines: 2,
                    style:
                        TextStyle(fontSize: 14.w, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: REdgeInsets.only(right: 20, top: 40),
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColor.greenaa.withOpacity(0.4),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColor.white,
                child: Icon(
                  Icons.play_arrow,
                  size: 25.w,
                  color: AppColor.green,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
