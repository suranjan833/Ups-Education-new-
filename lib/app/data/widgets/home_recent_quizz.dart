import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeRecentQuizze extends StatelessWidget {
  const HomeRecentQuizze({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Obx(() => controller.homeviewModel.value.data?.upshomelist != null
        ? SizedBox(
            height: 160.h,
            width: 428.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    controller.homeviewModel.value.data?.upshomelist!.length,
                itemBuilder: (context, index) {
                  if (controller.homeviewModel.value.data?.upshomelist![index]
                          .title ==
                      "Latest Quizzes ") {
                    return SizedBox(
                        height: 160.h,
                        width: 428.w,
                        child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.homeviewModel.value.data
                                ?.upshomelist![index].items!.length,
                            itemBuilder: (context, i) {
                              var data = controller.homeviewModel.value.data
                                  ?.upshomelist![index].items![i];
                              return Container(
                                height: 160.h,
                                width: 160.w,
                                margin: const EdgeInsets.only(right: 12),
                                padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 12.w,
                                    top: 10.h,
                                    bottom: 10.h),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image(
                                      height: 40.h,
                                      image:
                                          NetworkImage(data!.image.toString()),
                                    ),
                                    // SvgPicture.asset(
                                    //   AppImage.quiz,
                                    //   height: 40.h,
                                    // ),
                                    SizedBox(
                                      width: 135.w,
                                      child: Text(
                                        data.name.toString(),
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 13.w,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 135.w,
                                      child: Wrap(
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        spacing: 12.w,
                                        children: [
                                          Text(
                                            '${data.totalquestion} Questions',
                                            style: TextStyle(
                                              fontSize: 12.w,
                                            ),
                                          ),
                                          Container(
                                            height: 13.h,
                                            width: 1,
                                            color: AppColor.black,
                                          ),
                                          Text(
                                            '${data.time} min',
                                            style: TextStyle(
                                              fontSize: 12.w,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 33.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 180, 222, 181),
                                            Color.fromARGB(255, 180, 222, 181),
                                          ],
                                          begin: FractionalOffset.bottomLeft,
                                          end: Alignment.topRight,
                                          stops: [0.4, 0.7],
                                          tileMode: TileMode.repeated,
                                        ),
                                      ),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_right_alt,
                                            color: AppColor.green,
                                          ),
                                          label: Text(
                                            'Start Quiz',
                                            style: TextStyle(
                                                color: AppColor.green),
                                          )),
                                    ),
                                  ],
                                ),
                              );
                            }));
                  } else {
                    return const SizedBox();
                  }
                }),
          )
        : const Center(child: CircularProgressIndicator()));

  }

}
