import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeTestimonials extends StatelessWidget {
  const HomeTestimonials({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 13,
        children: [
          buildCategory(),
          buildCategory(),
          buildCategory(),
          buildCategory(),
        ],
      ),
    );
  }

  buildCategory() {
    return InkWell(
      onTap: () {
        buildDetailspop();
      },
      child: Container(
        padding: REdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                          borderRadius: BorderRadius.circular(11.r),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(AppImage.home_banner))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Wrap(
                        spacing: 3,
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(
                            'Sushruta Sahu',
                            style: TextStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.w),
                          ),
                          Text(
                            'NET Qualified Dec 2018',
                            style: TextStyle(fontSize: 14.w),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            const Text(
              'I would give them more than 5 star if I could. Joining UPS Education has been one of the best decisioons I took while...',
              maxLines: 3,
              style: TextStyle(),
            )
          ],
        ),
      ),
    );
  }

  buildDetailspop() {
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
                        fit: BoxFit.fill,
                        image: AssetImage(AppImage.home_banner))),
              ),
              title: Text(
                'Sushruta Sahu',
                style: TextStyle(
                    color: AppColor.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'NET Qualified Dec 2018',
                style: TextStyle(fontSize: 15.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: const Text(
                "It was a good decision for me to take admission in ups educations for M.Phil. Clinical Psychology entrance. I have learned a lot from sir. The notes and e-learning portal is very helpful. It really helps to know how much you are prepared."),
          )
        ],
      ),
    );
  }
}
