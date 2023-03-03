import 'package:get/get.dart';

import '../modules/AboutUs/bindings/about_us_binding.dart';
import '../modules/AboutUs/views/about_us_view.dart';
import '../modules/BottomNavigationBar/bindings/bottom_navigation_bar_binding.dart';
import '../modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../modules/Cart/bindings/cart_binding.dart';
import '../modules/Cart/views/cart_view.dart';
import '../modules/CartDetails/bindings/cart_details_binding.dart';
import '../modules/CartDetails/views/cart_details_view.dart';
import '../modules/ChangePassword/bindings/change_password_binding.dart';
import '../modules/ChangePassword/views/change_password_view.dart';
import '../modules/ContactUs/bindings/contact_us_binding.dart';
import '../modules/ContactUs/views/contact_us_view.dart';
import '../modules/EditProfile/bindings/edit_profile_binding.dart';
import '../modules/EditProfile/views/edit_profile_view.dart';
import '../modules/ExamInfo/bindings/exam_info_binding.dart';
import '../modules/ExamInfo/views/exam_info_view.dart';
import '../modules/FreeNotes/bindings/free_notes_binding.dart';
import '../modules/FreeNotes/views/free_notes_view.dart';
import '../modules/FullScreenVideo/bindings/full_screen_video_binding.dart';
import '../modules/FullScreenVideo/views/full_screen_video_view.dart';
import '../modules/Internship/bindings/internship_binding.dart';
import '../modules/Internship/views/internship_view.dart';
import '../modules/LatestUpdate/bindings/latest_update_binding.dart';
import '../modules/LatestUpdate/views/latest_update_view.dart';
import '../modules/Live/bindings/live_binding.dart';
import '../modules/Live/views/live_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/MyAccount/bindings/my_account_binding.dart';
import '../modules/MyAccount/views/my_account_view.dart';
import '../modules/MyCourse/bindings/my_course_binding.dart';
import '../modules/MyCourse/views/my_course_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/OurSuccessfulStudent/bindings/our_successful_student_binding.dart';
import '../modules/OurSuccessfulStudent/views/our_successful_student_view.dart';
import '../modules/PsychologyEntrance/bindings/psychology_entrance_binding.dart';
import '../modules/PsychologyEntrance/views/psychology_entrance_view.dart';
import '../modules/Quiz/bindings/quiz_binding.dart';
import '../modules/Quiz/views/quiz_view.dart';
import '../modules/QuizResult/bindings/quiz_result_binding.dart';
import '../modules/QuizResult/views/quiz_result_view.dart';
import '../modules/QuizStart/bindings/quiz_start_binding.dart';
import '../modules/QuizStart/views/quiz_start_view.dart';
import '../modules/Search/bindings/search_binding.dart';
import '../modules/Search/views/search_view.dart';
import '../modules/SuggestedVideos/bindings/suggested_videos_binding.dart';
import '../modules/SuggestedVideos/views/suggested_videos_view.dart';
import '../modules/Testimonials/bindings/testimonials_binding.dart';
import '../modules/Testimonials/views/testimonials_view.dart';
import '../modules/Wishlist/bindings/wishlist_binding.dart';
import '../modules/Wishlist/views/wishlist_view.dart';
import '../modules/Workshop/bindings/workshop_binding.dart';
import '../modules/Workshop/views/workshop_view.dart';
import '../modules/WorkshopDetails/bindings/workshop_details_binding.dart';
import '../modules/WorkshopDetails/views/workshop_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/videos/bindings/videos_binding.dart';
import '../modules/videos/views/videos_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION_BAR,
      page: () => BottomNavigationBarView(),
      binding: BottomNavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.MY_ACCOUNT,
      page: () => const MyAccountView(),
      binding: MyAccountBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.WISHLIST,
      page: () => const WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: _Paths.INTERNSHIP,
      page: () => const InternshipView(),
      binding: InternshipBinding(),
    ),
    GetPage(
      name: _Paths.MY_COURSE,
      page: () => const MyCourseView(),
      binding: MyCourseBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => const QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.WORKSHOP,
      page: () => const WorkshopView(),
      binding: WorkshopBinding(),
    ),
    GetPage(
      name: _Paths.WORKSHOP_DETAILS,
      page: () => const WorkshopDetailsView(),
      binding: WorkshopDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EXAM_INFO,
      page: () => const ExamInfoView(),
      binding: ExamInfoBinding(),
    ),
    GetPage(
      name: _Paths.PSYCHOLOGY_ENTRANCE,
      page: () => const PsychologyEntranceView(),
      binding: PsychologyEntranceBinding(),
    ),
    GetPage(
      name: _Paths.CART_DETAILS,
      page: () => const CartDetailsView(),
      binding: CartDetailsBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ_RESULT,
      page: () => const QuizResultView(),
      binding: QuizResultBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ_START,
      page: () => const QuizStartView(),
      binding: QuizStartBinding(),
    ),
    GetPage(
      name: _Paths.VIDEOS,
      page: () => const VideosView(),
      binding: VideosBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FULL_SCREEN_VIDEO,
      page: () => const FullScreenVideoView(),
      binding: FullScreenVideoBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => const AboutUsView(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => const ContactUsView(),
      binding: ContactUsBinding(),
    ),
    GetPage(
      name: _Paths.FREE_NOTES,
      page: () => const FreeNotesView(),
      binding: FreeNotesBinding(),
    ),
    GetPage(
      name: _Paths.OUR_SUCCESSFUL_STUDENT,
      page: () => const OurSuccessfulStudentView(),
      binding: OurSuccessfulStudentBinding(),
    ),
    GetPage(
      name: _Paths.TESTIMONIALS,
      page: () => const TestimonialsView(),
      binding: TestimonialsBinding(),
    ),
    GetPage(
      name: _Paths.LATEST_UPDATE,
      page: () => const LatestUpdateView(),
      binding: LatestUpdateBinding(),
    ),
    GetPage(
      name: _Paths.SUGGESTED_VIDEOS,
      page: () => const SuggestedVideosView(),
      binding: SuggestedVideosBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.LIVE,
      page: () => const LiveView(),
      binding: LiveBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
