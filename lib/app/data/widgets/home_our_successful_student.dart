import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeOurSuccessfulStudent extends StatelessWidget {
  const HomeOurSuccessfulStudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(
      () => controller.homeviewModel.value.allupdate?.items != null
          ? SizedBox(
              height: 110.h,
              width: 428.w,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 660,
                    mainAxisExtent: 199,
                    // childAspectRatio: 3 / 2,
                    // crossAxisSpacing: 12,
                    // mainAxisSpacing: 1
                  ),
                  itemCount:
                      controller.homeviewModel.value.allupdate?.items!.length,
                  itemBuilder: (BuildContext ctx, index) {
                    var data =
                        controller.homeviewModel.value.allupdate!.items![index];
                    return Stack(
                      children: [
                        Container(
                          width: 159.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                              image: NetworkImage(data.image.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: REdgeInsets.only(left: 10, bottom: 12),
                          alignment: Alignment.bottomLeft,
                          child: CircleAvatar(
                            radius: 13.r,
                            backgroundColor: AppColor.greenaa.withOpacity(0.4),
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
                    );
                  }),
            )
          : const Center(child: CircularProgressIndicator()),
    );
    // Stack(
    //   children: [
    //     Container(
    //       height: 100.h,
    //       width: 160.w,
    //       decoration: BoxDecoration(
    //         color: Colors.amber,
    //         borderRadius: BorderRadius.circular(12.r),
    //         image: DecorationImage(
    //           image: AssetImage(AppImage.home_banner),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       margin: REdgeInsets.only(left: 5, top: 63),
    //       alignment: Alignment.bottomLeft,
    //       child: CircleAvatar(
    //         radius: 13.r,
    //         backgroundColor: AppColor.greenaa.withOpacity(0.4),
    //         child: CircleAvatar(
    //           radius: 10.r,
    //           backgroundColor: AppColor.white,
    //           child: Icon(
    //             Icons.play_arrow,
    //             size: 17.w,
    //             color: Colors.red,
    //           ),
    //         ),
    //       ),
    //     )
    //   ],
    // );

    // Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [buildImage(), buildImage()],
    //     ),
    //     SizedBox(
    //       height: 10.h,
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [buildImage(), buildImage()],
    //     ),
    //   ],
    // );
  }

  buildImage() {
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: 160.w,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12.r),
            image: DecorationImage(
              image: AssetImage(AppImage.home_banner),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: REdgeInsets.only(left: 5, top: 63),
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
            radius: 13.r,
            backgroundColor: AppColor.greenaa.withOpacity(0.4),
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
    );
  }
}
