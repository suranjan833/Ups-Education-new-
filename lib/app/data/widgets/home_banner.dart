import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return
         Obx(
          () =>
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
                    count:
                        controller.homeviewModel.value.data!.allbanner!.length,
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
                ),
                );
  }
}
