import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/testimonials_controller.dart';

class TestimonialsView extends GetView<TestimonialsController> {
  const TestimonialsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TestimonialsController());
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColor.black,
            ),
          ),
          title: Text(
            'Testimonials',
            style: TextStyle(color: AppColor.black),
          ),
          // centerTitle: true,
        ),
        body: Obx(
          () => controller.homeviewModel.value.data?.upsstudentsay?.items !=
                  null
              ? SizedBox(
                  height: 590.h,
                  width: 428.w,
                  child: ListView.builder(
                      itemCount: controller.homeviewModel.value.data
                          ?.upsstudentsay?.items!.length,
                      itemBuilder: (context, index) {
                        var data = controller.homeviewModel.value.data
                            ?.upsstudentsay?.items![index];
                        return InkWell(
                          onTap: () {
                            buildDetailspop(
                                title: data.name,
                                subtitle: data.coursename,
                                img: data.image,
                                des: data.description);
                          },
                          child: Container(
                            height: 116.h,
                            width: 428.w,
                            margin: EdgeInsets.symmetric(
                                vertical: 7.h, horizontal: 9.w),
                            padding: EdgeInsets.symmetric(
                                vertical: 7.h, horizontal: 9.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: AppColor.grey, width: 0.3)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 40.r,
                                  backgroundImage:
                                      NetworkImage(data!.image.toString()),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 180.w,
                                      height: 20.h,
                                      child: Text(
                                        data.name.toString(),
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180.w,
                                      height: 20.h,
                                      child: Text(
                                        data.coursename.toString(),
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 14.w,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 220.w,
                                      height: 60.h,
                                      child: Text(
                                        data.description.toString(),
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }))
              : const Center(child: CircularProgressIndicator()),
        ));
  }

  buildDetailspop({String? title, String? subtitle, String? img, String? des}) {
    Get.defaultDialog(
      title: '',
      radius: 30.r,
      // barrierDismissible: false,
      actions: [
        CircleAvatar(
          backgroundColor: AppColor.litegrey,
          child: Icon(
            Icons.arrow_back_rounded,
            color: AppColor.black.withOpacity(0.5),
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColor.litegrey,
          child: Icon(
            Icons.arrow_forward_rounded,
            color: AppColor.black,
          ),
        )
      ],
      contentPadding: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 14.r),
      content: Column(
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
              contentPadding: REdgeInsets.symmetric(horizontal: 10),
              horizontalTitleGap: 10,
              minVerticalPadding: 5,
              minLeadingWidth: 2,
              leading: Container(
                width: 45.w,
                height: 100.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(img!))),
              ),
              title: Text(
                title!,
                maxLines: 1,
                style: TextStyle(
                    color: AppColor.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                subtitle!,
                // maxLines: 1,
                style: TextStyle(fontSize: 15.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Text(des!
                // "It was a good decision for me to take admission in ups educations for M.Phil. Clinical Psychology entrance. I have learned a lot from sir. The notes and e-learning portal is very helpful. It really helps to know how much you are prepared."
                ),
          )
        ],
      ),
    );
  }
}
