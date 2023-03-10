// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_after_registration.dart';
import 'package:ups_education/app/data/widgets/home_banner.dart';
import 'package:ups_education/app/data/widgets/home_before_registration.dart';
import 'package:ups_education/app/modules/ExamInfo/views/exam_info_view.dart';
import 'package:ups_education/app/modules/FreeNotes/views/free_notes_view.dart';
import 'package:ups_education/app/modules/Live/views/live_view.dart';
import 'package:ups_education/app/modules/PsychologyEntrance/views/psychology_entrance_view.dart';
import 'package:ups_education/app/modules/Quiz/views/quiz_view.dart';
import 'package:ups_education/app/modules/Search/views/search_view.dart';
import 'package:ups_education/app/modules/Workshop/views/workshop_view.dart';

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
          // Obx(
          //   () =>
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
                  const HomeBanner(),
                  Padding(
                    padding: REdgeInsets.symmetric(vertical: 17),
                    child: Text(
                      'Explore categories',
                      style: TextStyle(
                          fontSize: 16.w, fontWeight: FontWeight.w500),
                    ),
                  ),
                  categoryCard(),
                  // // //start   before registrations page
                  (getBox.read(USER_ID) == null)
                      ? const HomeBeforeRegistration()
                      :
                      //   //  //end before registeation page
                      //    //start after register page
                      const HomeAfterRegistration()
                  // //end after registration page
                ]),
          // ),
        )
        ));
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
}
