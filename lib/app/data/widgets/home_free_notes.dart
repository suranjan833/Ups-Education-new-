// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeFreeNotes extends StatelessWidget {
  const HomeFreeNotes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Obx(() => controller.homeviewModel.value.data?.upshomelist != null
        ? SizedBox(
            height: 212.h,
            width: 428.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    controller.homeviewModel.value.data?.upshomelist!.length,
                itemBuilder: (context, index) {
                  if (controller.homeviewModel.value.data?.upshomelist![index]
                          .title ==
                      "Free Notes") {
                    return SizedBox(
                      height: 104.h,
                      width: 420.w,
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          primary: false,
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 2.2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 4,
                                  crossAxisCount: 2),
                          itemCount: controller.homeviewModel.value.data
                              ?.upshomelist![index].items?.length,
                          itemBuilder: (BuildContext ctx, i) {
                            var data = controller.homeviewModel.value.data
                                ?.upshomelist![index].items![i];
                            return Container(
                              height: 90.h,
                              width: 380.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                              ),
                              margin: EdgeInsets.only(
                                  right: 7.w, bottom: 5.h, top: 3.h),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 60.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrangeAccent,
                                        borderRadius:
                                            BorderRadius.circular(13.r),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                data!.image.toString()))),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                        width: 190.w,
                                        height: 60.h,
                                        padding: EdgeInsets.only(
                                            bottom: 3.h,
                                            top: 3.h,
                                            left: 13.w,
                                            right: 8.w),
                                        child: Text(
                                          data.name.toString(),
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 14.w,
                                              fontWeight: FontWeight.w400),
                                        )),
                                  )
                                ],
                              ),
                            );
                          }),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
          )
        : const Center(child: CircularProgressIndicator()));
  }

  // Column(
  //   children: [
  //     SingleChildScrollView(
  //         scrollDirection: Axis.horizontal,
  //         child: Row(children: [
  //           buildfacultvideo(
  //               'We don\'t want to see war of word between india an pakistan: US'),
  //           buildfacultvideo(
  //               'Please take it down: Anushka Sharma on PUMA using her of publicity'),
  //           buildfacultvideo(
  //               'IFS Officer shares pic of green snake between mushrooms; people say'),
  //           buildfacultvideo(
  //               'We don\'t want to see war of word between india an pakistan: US'),
  //           buildfacultvideo(
  //               'Please take it down: Anushka Sharma on PUMA using her of publicity'),
  //           buildfacultvideo(
  //               'IFS Officer shares pic of green snake between mushrooms; people say')
  //         ])),
  //     SizedBox(
  //       height: 9.h,
  //     ),
  //     SingleChildScrollView(
  //         // reverse: true,
  //         scrollDirection: Axis.horizontal,
  //         child: Row(children: [
  //           buildfacultvideo(
  //               'We don\'t want to see war of word between india an pakistan: US'),
  //           buildfacultvideo(
  //               'Please take it down: Anushka Sharma on PUMA using her of publicity'),
  //           buildfacultvideo(
  //               'IFS Officer shares pic of green snake between mushrooms; people say'),
  //           buildfacultvideo(
  //               'We don\'t want to see war of word between india an pakistan: US'),
  //           buildfacultvideo(
  //               'Please take it down: Anushka Sharma on PUMA using her of publicity'),
  //           buildfacultvideo(
  //               'IFS Officer shares pic of green snake between mushrooms; people say')
  //           // buildfacultvideo(
  //           //   "https://youtu.be/3It49x562b0",
  //           // ),
  //           // buildfacultvideo(
  //           //   "https://www.youtube.com/live/mCMd73gBL0s?feature=share",
  //           // ),
  //           // buildfacultvideo(
  //           //   "https://youtu.be/Zff3rUY0iGg",
  //           // ),
  //           // buildfacultvideo(
  //           //   "https://youtu.be/cGNvKV4u6zw",
  //           // ),
  //           // buildfacultvideo(
  //           //   "https://youtu.be/JqfvfdmUo6k",
  //           // ),
  //           // buildfacultvideo(
  //           //   "https://youtu.be/3It49x562b0",
  //           // ),
  //           // buildfacultvideo(
  //           //   "https://www.youtube.com/live/mCMd73gBL0s?feature=share",
  //           // ),
  //         ])),
  //   ],
  // );

  buildfacultvideo(String title) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      margin: EdgeInsets.only(
        right: 7.w,
      ),
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(12.r)),
      height: 80.h,
      width: 260.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60.h,
            width: 80.w,
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(13.r),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImage.home_banner))),
          ),
          Container(
            width: 150.w,
            padding:
                EdgeInsets.only(bottom: 3.h, top: 3.h, left: 3.w, right: 3.w),
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(fontSize: 14.w, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
     
    );
  }
}
