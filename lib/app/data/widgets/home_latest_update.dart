// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeLatestUpdate extends StatelessWidget {
  const HomeLatestUpdate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(
      () => controller.homeviewModel.value.data?.allupdate?.allupdates != null
          ? SizedBox(
              height: 262.h,
              width: 420.w,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    var data = controller
                        .homeviewModel.value.data?.allupdate?.allupdates![index];

                    return SizedBox(
                      height: 88.h,
                      width: 400.w,
                      child: Material(
                        color: AppColor.litegrey,
                        elevation: 0.6,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                              height: 74.h,
                              width: 125.w,
                              decoration: BoxDecoration(
                                  color: AppColor.green,
                                  borderRadius: BorderRadius.circular(10.r),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          data!.image.toString()))),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200.w,
                                  padding: EdgeInsets.only(
                                      bottom: 4.h,
                                      top: 2.h,
                                      left: 10.w,
                                      right: 10.w),
                                  child: Text(
                                    "${data.name}",
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 13.w,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        top: 2.h,
                                        right: 13.w,
                                        left: 10.w,
                                        bottom: 6.h),
                                    // alignment: Alignment.center,
                                    child: Text("${data.id}")), //time
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
