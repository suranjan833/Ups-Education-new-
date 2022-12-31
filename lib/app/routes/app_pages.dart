import 'package:get/get.dart';

import '../modules/BottomNavigationBar/bindings/bottom_navigation_bar_binding.dart';
import '../modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../modules/Cart/bindings/cart_binding.dart';
import '../modules/Cart/views/cart_view.dart';
import '../modules/ChangePassword/bindings/change_password_binding.dart';
import '../modules/ChangePassword/views/change_password_view.dart';
import '../modules/EditProfile/bindings/edit_profile_binding.dart';
import '../modules/EditProfile/views/edit_profile_view.dart';
import '../modules/Internship/bindings/internship_binding.dart';
import '../modules/Internship/views/internship_view.dart';
import '../modules/MyAccount/bindings/my_account_binding.dart';
import '../modules/MyAccount/views/my_account_view.dart';
import '../modules/MyCourse/bindings/my_course_binding.dart';
import '../modules/MyCourse/views/my_course_view.dart';
import '../modules/Quiz/bindings/quiz_binding.dart';
import '../modules/Quiz/views/quiz_view.dart';
import '../modules/Wishlist/bindings/wishlist_binding.dart';
import '../modules/Wishlist/views/wishlist_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

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
  ];
}
