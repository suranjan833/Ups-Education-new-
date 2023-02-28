// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeFacultySuggestions extends StatelessWidget {
  const HomeFacultySuggestions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(() => controller.homeviewModel.value.data?.upshomepaid != null
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(spacing: 18, children: [
              buildfacultvideo(),
              buildfacultvideo(),
              buildfacultvideo(),
              buildfacultvideo(),
              buildfacultvideo()
            ]))
        : SizedBox(
            height: 214.h,
            width: 428.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    controller.homeviewModel.value.data?.upshomepaid!.length,
                itemBuilder: (context, index) {
                  if (controller.homeviewModel.value.data?.upshomepaid![index]
                          .title ==
                      "Faculty Suggestion") {
                    return SizedBox(
                      height: 214.h,
                      width: 420.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.homeviewModel.value.data
                              ?.upshomepaid![index].items!.length,
                          itemBuilder: (context, i) {
                            var data = controller.homeviewModel.value.data
                                ?.upshomepaid![index].items![i];
                            return SizedBox(
                              height: 175.h,
                              width: 255.w,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColor.white,
                                        borderRadius:
                                            BorderRadius.circular(17.r)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100.h,
                                          width: 250.w,
                                          decoration: BoxDecoration(
                                              color: AppColor.green,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(17.r),
                                                topRight: Radius.circular(17.r),
                                              ),
                                              image: DecorationImage(
                                                  colorFilter: const ColorFilter
                                                      .srgbToLinearGamma(),
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      data!.image.toString()))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 8.h,
                                              bottom: 8.h,
                                              left: 12.w,
                                              right: 45.w),
                                          child: Text(
                                            data.name.toString(),
                                            style: TextStyle(
                                                fontSize: 14.w,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        REdgeInsets.only(right: 12, bottom: 10),
                                    alignment: Alignment.bottomRight,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 26.w,
                                      color: AppColor.green,
                                    ),
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
          ));
    // : const Center(child: CircularProgressIndicator()));

    // return SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Wrap(spacing: 18, children: [
    //       buildfacultvideo(),
    //       buildfacultvideo(),
    //       buildfacultvideo(),
    //       buildfacultvideo(),
    //       buildfacultvideo()

    //     ]));
  }

  buildfacultvideo() {
    return SizedBox(
      height: 175.h,
      width: 255.w,
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
                  height: 100.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17.r),
                        topRight: Radius.circular(17.r),
                      ),
                      image: DecorationImage(
                          colorFilter: const ColorFilter.srgbToLinearGamma(),
                          fit: BoxFit.fill,
                          image: AssetImage(AppImage.home_banner))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 8.h, bottom: 8.h, left: 12.w, right: 45.w),
                  child: Text(
                    'Best 5 Books to Study for Bio Psychology',
                    style:
                        TextStyle(fontSize: 14.w, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          // AnyLinkPreview(
          //   urlLaunchMode: LaunchMode.platformDefault,
          //   link: link,
          //   displayDirection: UIDirection.uiDirectionVertical,
          //   bodyMaxLines: 1,
          //   bodyTextOverflow: TextOverflow.ellipsis,
          //   titleStyle: TextStyle(
          //     color: AppColor.black,
          //     fontWeight: FontWeight.w400,
          //     fontSize: 14.w,
          //   ),
          //   bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          //   backgroundColor: AppColor.white,
          //   borderRadius: 17.r,
          //   // removeElevation: true,
          //   boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
          //   onTap: () async {
          //     var url = link;
          //     if (await canLaunch(url)) {
          //       await launch(url);
          //     }
          //   },
          // ),
          Container(
            margin: REdgeInsets.only(right: 12, bottom: 10),
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.arrow_forward,
              size: 26.w,
              color: AppColor.green,
            ),
          )
        ],
      ),
    );
  }
}
