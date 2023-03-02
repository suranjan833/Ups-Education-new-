import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class HomeTestimonials extends StatelessWidget {
  const HomeTestimonials({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(
      () => controller.homeviewModel.value.data?.upsstudentsay?.items != null
          ? SizedBox(
              width: 428.w,
              height: 148.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller
                      .homeviewModel.value.data?.upsstudentsay?.items?.length,
                  itemBuilder: (context, index) {
                    var data = controller
                        .homeviewModel.value.data?.upsstudentsay?.items?[index];
                    return Obx(
                      () => InkWell(
                        onTap: () {
                          controller.index.value = index;
                        
                          Get.defaultDialog(
                            title: '',
                            radius: 30.r,
                            barrierDismissible: false,
                            actions: [
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                   
                                    if (controller.index.value != 0) {
                                      controller.index.value--;
                                      index = controller.index.value;
                                   
                                    }
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.litegrey,
                                    child: controller.index.value == 0
                                        ? Icon(
                                            Icons.arrow_back_rounded,
                                            color:
                                                AppColor.black.withOpacity(0.5),
                                          )
                                        : Icon(
                                            Icons.arrow_back_rounded,
                                            color: AppColor.black,
                                          ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    if (controller.index.value !=
                                        (controller
                                                .homeviewModel
                                                .value
                                                .data
                                                ?.upsstudentsay
                                                ?.items
                                                ?.length)! -
                                            1) {
                                      controller.index.value++;
                                      index = controller.index.value;

                                    }
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.litegrey,
                                    child: controller.index.value ==
                                            (controller
                                                    .homeviewModel
                                                    .value
                                                    .data
                                                    ?.upsstudentsay
                                                    ?.items
                                                    ?.length)! -
                                                1
                                        ? Icon(
                                            Icons.arrow_forward_rounded,
                                            color:
                                                AppColor.black.withOpacity(0.5),
                                          )
                                        : Icon(
                                            Icons.arrow_forward_rounded,
                                            color: AppColor.black,
                                          ),
                                  ),
                                ),
                              ),
                            ],
                            contentPadding: EdgeInsets.only(
                                left: 10.r, right: 10.r, bottom: 14.r),
                            content: Obx(
                              () => Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 13.r),
                                      alignment: Alignment.topRight,
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.red.shade100,
                                        child: const Icon(
                                          Icons.close,
                                          size: 17,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: REdgeInsets.all(5),
                                    width: 250.w,
                                    height: 70.h,
                                    child: ListTile(
                                      contentPadding:
                                          REdgeInsets.symmetric(horizontal: 10),
                                      horizontalTitleGap: 10,
                                      minVerticalPadding: 5,
                                      minLeadingWidth: 2,
                                      leading: Container(
                                        width: 45.w,
                                        height: 100.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                    "${controller.homeviewModel.value.data?.upsstudentsay?.items?[controller.index.value].image}"))),
                                      ),
                                      title: Text(
                                        "${controller.homeviewModel.value.data?.upsstudentsay?.items?[controller.index.value].name}",
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: AppColor.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      subtitle: Text(
                                        "${controller.homeviewModel.value.data?.upsstudentsay?.items?[controller.index.value].coursename}",
                                        // maxLines: 1,
                                        style: TextStyle(fontSize: 15.r),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.r),
                                      child: Text(
                                          "${controller.homeviewModel.value.data?.upsstudentsay?.items?[controller.index.value].description}")),
                                ],
                              ),
                            ),
                          );
                        
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15.w),
                          padding: REdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          width: 240.w,
                          height: 138.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: AppColor.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                    top: 6.h,
                                  ),
                                  width: 250.w,
                                  height: 70.h,
                                  child: Wrap(
                                    spacing: 10,
                                    children: [
                                      Container(
                                        width: 45.w,
                                        height: 58.h,
                                        decoration: BoxDecoration(
                                            color: AppColor.greenaa,
                                            borderRadius:
                                                BorderRadius.circular(11.r),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                    data!.image.toString()))),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 12.h),
                                        child: Wrap(
                                          spacing: 3,
                                          direction: Axis.vertical,
                                          alignment: WrapAlignment.center,
                                          runAlignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          children: [
                                            Text(
                                              data.name ?? 'Sushruta Sahu',
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: AppColor.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.w),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 40.h),
                                              height: 40.h,
                                              width: 155.w,
                                              child: Text(
                                                data.coursename.toString(),
                                                maxLines: 1,
                                                style:
                                                    TextStyle(fontSize: 14.w),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Text(
                                controller.homeviewModel.value.data!
                                    .upsstudentsay!.items![index].description
                                    .toString(),
                                maxLines: 3,
                                style: const TextStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

//   buildDetailspop(int index,
//       {String? title,
//       String? subtitle,
//       String? img,
//       String? des,
//       String? initial,
//       String? last}) {
//     Get.defaultDialog(
//       title: '',
//       radius: 30.r,
//       // barrierDismissible: false,
//       actions: [
//         InkWell(
//           onTap: () {
//             if (index != 0) {
//               index--;
//               print("$index first");
//             }
//           },
//           child: CircleAvatar(
//             backgroundColor: AppColor.litegrey,
//             child: index == initial
//                 ? Icon(
//                     Icons.arrow_back_rounded,
//                     color: AppColor.black.withOpacity(0.5),
//                   )
//                 : Icon(
//                     Icons.arrow_back_rounded,
//                     color: AppColor.black,
//                   ),
//           ),
//         ),
//        InkWell(
//             onTap: () {
//               if (index != last) {
//                 index++;
//                 print("$index last");
//               }
//             },
//             child: CircleAvatar(
//               backgroundColor: AppColor.litegrey,
//               child: index != last
//                   ? Icon(
//                       Icons.arrow_forward_rounded,
//                       color: AppColor.black,
//                     )
//                   : Icon(
//                       Icons.arrow_forward_rounded,
//                       color: AppColor.black.withOpacity(0.5),
//                     ),
//             ),
//           ),

//       ],
//       contentPadding: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 14.r),
//       content: Column(
//         children: [
//           InkWell(
//             onTap: () {
//               Get.back();
//             },
//             child: Container(
//               margin: EdgeInsets.only(right: 13.r),
//               alignment: Alignment.topRight,
//               child: CircleAvatar(
//                 radius: 14,
//                 backgroundColor: Colors.red.shade100,
//                 child: const Icon(
//                   Icons.close,
//                   size: 17,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             margin: REdgeInsets.all(5),
//             width: 250.w,
//             height: 70.h,
//             child: ListTile(
//               contentPadding: REdgeInsets.symmetric(horizontal: 10),
//               horizontalTitleGap: 10,
//               minVerticalPadding: 5,
//               minLeadingWidth: 2,
//               leading: Container(
//                 width: 45.w,
//                 height: 100.h,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     image: DecorationImage(
//                         fit: BoxFit.fill, image: NetworkImage(img!))),
//               ),
//               title: Text(
//                 title!,
//                 maxLines: 1,
//                 style: TextStyle(
//                     color: AppColor.black, fontWeight: FontWeight.w500),
//               ),
//               subtitle: Text(
//                 subtitle!,
//                 // maxLines: 1,
//                 style: TextStyle(fontSize: 15.r),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.r),
//             child: Text(des!
//                 // "It was a good decision for me to take admission in ups educations for M.Phil. Clinical Psychology entrance. I have learned a lot from sir. The notes and e-learning portal is very helpful. It really helps to know how much you are prepared."
//                 ),
//           )
//         ],
//       ),
//     );
  // }
}
