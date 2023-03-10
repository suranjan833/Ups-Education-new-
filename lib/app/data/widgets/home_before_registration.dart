import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_features_course.dart';
import 'package:ups_education/app/data/widgets/home_free_notes.dart';
import 'package:ups_education/app/data/widgets/home_latest_update.dart';
import 'package:ups_education/app/data/widgets/home_our_successful_student.dart';
import 'package:ups_education/app/data/widgets/home_recent_quizz.dart';
import 'package:ups_education/app/data/widgets/home_suggested_videos.dart';
import 'package:ups_education/app/data/widgets/home_tetmonial.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';
class HomeBeforeRegistration extends StatelessWidget {
  const HomeBeforeRegistration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(vertical: 19),
              child: Text(
                'Suggested Videos',
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const SuggestedVideosView());
                },
                child: const Text('View all'))
          ],
        ),
        const HomeSuggestedVideos(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(vertical: 19),
              child: Text(
                'Free Notes',
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const FreeNotesView());
                },
                child: const Text('View all'))
          ],
        ),
        const HomeFreeNotes(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(vertical: 19),
              child: Text(
                'Featured Course',
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const MyCourseView());
                },
                child: const Text('View all'))
          ],
        ),
        const HomeFeatureCourse(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(vertical: 19),
              child: Text(
                'Recent Quizzes',
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const QuizView());
                },
                child: const Text('View all'))
          ],
        ),
        const HomeRecentQuizze(),
        Container(
          margin: EdgeInsets.only(top: 14.h),
          color: AppColor.apcolor,
          child: Image(
              color: Colors.amber,
              height: 150.h,
              width: 400.w,
              fit: BoxFit.fill,
              image: AssetImage(AppImage.home_banner)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(vertical: 19),
              child: Text(
                'Latest Updates',
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const LatestUpdateView());
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
                'Our Successful Students',
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const OurSuccessfulStudentView());
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
                style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
                onPressed: () {
                  // Get.to(const TestimonialsView());
                },
                child: const Text('View all'))
          ],
        ),
        const HomeTestimonials(),
      ],
    );
  }
}
