
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
        padding: REdgeInsets.symmetric(horizontal: 10, vertical: 4),
        width: 240.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.white,
        ),
        child: Column(
          children: [
            Container(
              margin: REdgeInsets.all(5),
              width: 250.w,
              height: 70.h,
              child: ListTile(
                contentPadding: REdgeInsets.all(10),
                horizontalTitleGap: 10,
                minVerticalPadding: 5,
                minLeadingWidth: 2,
                leading: Container(
                  width: 35.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"))),
                  // child: Image.network(
                  //     "https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"),
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
            const Text(
                'I would give them more than 5 star if I\ncould. Joining UPS Education has been\none of the best decisioons I took while...')
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
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"))),
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
