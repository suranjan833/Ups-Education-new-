// ignore_for_file: deprecated_member_use

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_faculty_suggestions.dart';
import 'package:ups_education/app/data/widgets/self_assessment.dart';
import 'package:ups_education/app/modules/Quiz/views/quiz_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
        backgroundColor: AppColor.litegrey,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            // height: 1290.h,
            margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
            // padding: REdgeInsets.all(15.0),
            child: Obx(
              () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 14),
                      child: TextFormField(
                        controller: controller.searchController,
                        decoration: InputDecoration(
                          focusColor: AppColor.white,
                          hoverColor: AppColor.white,
                          contentPadding: REdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          hintText: 'What do you want to learn?',
                          suffixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: AppColor.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().radius(15))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor.white),
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().radius(25))),
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
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 19),
                      child: Text(
                        'UGC NET JRF & Clinical psychology\nentrance coaching',
                        style: TextStyle(
                            fontSize: 15.w, fontWeight: FontWeight.w500),
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
                            padding: REdgeInsets.symmetric(
                                horizontal: 15.r, vertical: 9.r),
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
                            padding: REdgeInsets.symmetric(
                                horizontal: 15.r, vertical: 9.r),
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
                        Container(
                          padding: REdgeInsets.symmetric(
                              horizontal: 15.r, vertical: 9.r),
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
                        TextButton(
                            onPressed: () {}, child: const Text('View all'))
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
                                scrollVideo(),
                                Padding(
                                  padding: REdgeInsets.symmetric(vertical: 19),
                                  child: Text(
                                    'M.Phil Clinical Psychology Entrance\nCoaching',
                                    style: TextStyle(
                                        fontSize: 15.w,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: REdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: REdgeInsets.symmetric(
                                            horizontal: 15.r, vertical: 9.r),
                                        decoration: BoxDecoration(
                                            color: AppColor.green,
                                            borderRadius:
                                                BorderRadius.circular(12.r)),
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
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Text(
                                          'Mock test',
                                          style: TextStyle(
                                              color: AppColor.black
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('View all'))
                                    ],
                                  ),
                                ),
                                scrollVideo(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          REdgeInsets.symmetric(vertical: 19),
                                      child: Text(
                                        'Recent Quizzes',
                                        style: TextStyle(
                                            fontSize: 15.w,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('View all'))
                                  ],
                                ),
                                const HomeRecentQuizze(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          REdgeInsets.symmetric(vertical: 19),
                                      child: Text(
                                        'Faculty Suggestions:',
                                        style: TextStyle(
                                            fontSize: 15.w,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('View all'))
                                  ],
                                ),
                                const HomeFacultySuggestions(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          REdgeInsets.symmetric(vertical: 19),
                                      child: Text(
                                        'Latest Updates',
                                        style: TextStyle(
                                            fontSize: 15.w,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('View all'))
                                  ],
                                ),
                                const HomeLatestUpdate(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          REdgeInsets.symmetric(vertical: 19),
                                      child: Text(
                                        'Our Successful students',
                                        style: TextStyle(
                                            fontSize: 15.w,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('View all'))
                                  ],
                                ),
                                const HomeOurSuccessfulStudent(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          REdgeInsets.symmetric(vertical: 19),
                                      child: Text(
                                        'Testmonials',
                                        style: TextStyle(
                                            fontSize: 15.w,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('View all'))
                                  ],
                                ),
                                const HomeTestimonials(),
                              ],
                            ),
                          ),
                  ]),
            ),
          ),
        )));
  }

  Widget scrollablePage() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5).w,
          height: ScreenUtil().setHeight(160),
          // pageview
          child: PageView(
            controller: controller.pagecontroller,
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(350),
                height: ScreenUtil().setHeight(140),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20).r,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.z6IyaBj-LC0ZDQabiWmn8AHaEK&pid=Api&P=0"))),
              ),
              Container(
                width: ScreenUtil().setWidth(350),
                height: ScreenUtil().setHeight(140),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20).r,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.z6IyaBj-LC0ZDQabiWmn8AHaEK&pid=Api&P=0"))),
              ),
              Container(
                width: ScreenUtil().setWidth(350),
                height: ScreenUtil().setHeight(140),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20).r,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://tse1.mm.bing.net/th?id=OIP.z6IyaBj-LC0ZDQabiWmn8AHaEK&pid=Api&P=0"))),
              ),
            ],
          ),
        ),
        Center(
          child: SmoothPageIndicator(
            controller: controller.pagecontroller,
            count: 3,
            effect: SlideEffect(
                spacing: 2,
                radius: 3,
                dotWidth: 27,
                dotHeight: 4,
                activeDotColor: AppColor.apcolor),
          ),
        ),
      ],
    );
  }

  Widget categoryCard() {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 1, vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20).r,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCat('Quiz', AppColor.focolor, ontap: () {
                Get.to(const QuizView());
              }),
              buildCat('Course', AppColor.greenaa),
              buildCat('Workshop', AppColor.focolor),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCat('Free Notes', AppColor.greenaa),
              buildCat('Exam info', AppColor.focolor),
              buildCat('Live', AppColor.greenaa),
            ],
          ),
        ],
      ),
    );
  }

  buildCat(String title, Color color, {void Function()? ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: ScreenUtil().setWidth(96),
        height: ScreenUtil().setHeight(130),
        padding: REdgeInsets.all(14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20).r,
        ),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColor.white,
              child: const Icon(Icons.home),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13.w),
            ),
          ],
        ),
      ),
    );
  }

  Widget scrollVideo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 18,
        children: [
          buildVideoScroll(
              "https://www.youtube.com/live/3xKq9CtYLqw?feature=share"),
          buildVideoScroll("https://youtu.be/lE6RYpe9IT0"),
          buildVideoScroll("https://youtu.be/eKFTSSKCzWA"),
          buildVideoScroll("https://youtu.be/Hg1-NHJ7-sY"),
          buildVideoScroll("https://www.youtube.com/watch?v=jPwWa6InIHU"),
        ],
      ),
    );
  }

  buildVideoScroll(String link) {
    return SizedBox(
      height: 175.h,
      width: 255.w,
      child: Stack(
        children: [
          AnyLinkPreview(
            urlLaunchMode: LaunchMode.platformDefault,
            link: link,
            displayDirection: UIDirection.uiDirectionVertical,
            bodyMaxLines: 2,
            bodyTextOverflow: TextOverflow.ellipsis,
            titleStyle: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.w,
            ),
            bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
            backgroundColor: AppColor.white,
            borderRadius: 30.r,
            removeElevation: true,
            boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
            onTap: () async {
              var url = link;
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
          ),
          Container(
            margin: REdgeInsets.only(right: 20, top: 10),
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: AppColor.greenaa.withOpacity(0.4),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: AppColor.white,
                child: Icon(
                  Icons.play_arrow,
                  size: 30.w,
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
