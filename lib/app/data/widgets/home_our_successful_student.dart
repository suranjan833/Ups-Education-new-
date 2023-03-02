// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeOurSuccessfulStudent extends StatelessWidget {
  const HomeOurSuccessfulStudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(
      () => controller.homeviewModel.value.data?.upshomelist != null
          ? SizedBox(
              height: 210.h,
              width: 428.w,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      controller.homeviewModel.value.data?.upshomelist!.length,
                  itemBuilder: (context, index) {
                    if (controller.homeviewModel.value.data?.upshomelist![index]
                            .title ==
                        "Our Successful Students") {
                      return SizedBox(
                        height: 210.h,
                        width: 428.w,
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            primary: false,
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 2.2,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 0,
                                    crossAxisCount: 2),
                            itemCount: 4,
                            itemBuilder: (BuildContext ctx, i) {
                              var data = controller.homeviewModel.value.data
                                  ?.upshomelist![index].items![i];
                              return InkWell(
                                onTap: () async {
                                  var videoUrl = data.videourl;
                                  if (await canLaunch(videoUrl!)) {
                                    await launch(videoUrl);
                                  }
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 195.w,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      margin: EdgeInsets.only(
                                          bottom: 2.h, top: 3.h),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              data!.image.toString()),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: REdgeInsets.only(
                                          left: 10, bottom: 22),
                                      alignment: Alignment.bottomLeft,
                                      child: CircleAvatar(
                                        radius: 13.r,
                                        backgroundColor:
                                            AppColor.greenaa.withOpacity(0.4),
                                        child: CircleAvatar(
                                          radius: 10.r,
                                          backgroundColor: AppColor.white,
                                          child: Icon(
                                            Icons.play_arrow,
                                            size: 17.w,
                                            color: Colors.red,
                                          ),
                                        ),
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
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
