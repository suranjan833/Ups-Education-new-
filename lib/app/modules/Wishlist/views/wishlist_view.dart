// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WishlistController());
    controller.wishlistData();
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Obx(
          () => controller.wishlistModel.value.data?.coursedata != null
              ? SizedBox(
                  height: 650.h,
                  width: 428.w,
                  child: ListView.builder(
                      itemCount: controller
                          .wishlistModel.value.data?.coursedata?.length,
                      itemBuilder: (context, index) {
                        var data = controller
                            .wishlistModel.value.data?.coursedata?[index];

                        return Stack(
                          children: [
                            Card(
                              child: Container(
                                margin: REdgeInsets.symmetric(
                                    horizontal: 19, vertical: 2),
                                height: 95.h,
                                padding: REdgeInsets.all(6.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data!.instructorname ??
                                          'By DR. Arvind Otta',
                                      style: TextStyle(
                                          // fontWeight: FontWeight.w600,
                                          color:
                                              AppColor.black.withOpacity(0.5)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 270,
                                          child: Text(
                                            textAlign: TextAlign.start,
                                            data.name ??
                                                'UGC NET JRF & M.Phil Clinical\nPsychology Entrance - Classroom',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15.r,
                                                color: AppColor.black),
                                            maxLines: 2,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.buildRemove(
                                                data.id.toString());
                                          },
                                          child: CircleAvatar(
                                            radius: 19.r,
                                            backgroundColor:
                                                Colors.red.shade100,
                                            child:
                                                SvgPicture.asset(AppImage.del),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '\u{20B9} ${data.price}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                Container(
                                    height: 30,
                                    width: 100,
                                    color: AppColor.white,
                                    margin: REdgeInsets.only(
                                        top: 85.h,
                                        left: 10,
                                        right: 13,
                                        bottom: 3),
                                    alignment: Alignment.bottomRight,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See Preview',
                                          style:
                                              TextStyle(color: AppColor.green),
                                        ))),
                              ],
                            )
                          ],
                        );
                      }),
                )
              // : Container(
              //     width: 428.w,
              //     height: 100.h,
              //     color: AppColor.focolor,
              //     padding: EdgeInsets.all(20.h),
              //     child: const Center(child: Text("No Wishlist Data Available"))),
              : const CircularProgressIndicator(),
        ));
  }
}
