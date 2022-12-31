// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WishlistController());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            SizedBox(
              height: 10.h,
            ),
          ],
        )),
      ),
    );
  }

  buildCard() {
    return Stack(
      children: [
        Card(
          child: Container(
            margin: REdgeInsets.symmetric(horizontal: 19, vertical: 2),
            height: 95.h,
            padding: REdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'By DR. Arvind Otta',
                  style: TextStyle(
                      // fontWeight: FontWeight.w600,
                      color: AppColor.black.withOpacity(0.5)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'UGC NET JRF & M.Phil Clinical\nPsychology Entrance - Classroom',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.r,
                          color: AppColor.black),
                    ),
                    InkWell(
                      onTap: () {
                        controller.buildRemove();
                      },
                      child: CircleAvatar(
                        radius: 19.r,
                        backgroundColor: Colors.red.shade100,
                        child: CircleAvatar(
                          radius: 13.r,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.delete_forever_outlined,
                            color: AppColor.white,
                            size: 19,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  '\u{20B9} 34000.00',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: AppColor.black),
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
                margin:
                    REdgeInsets.only(top: 85.h, left: 10, right: 13, bottom: 3),
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See Preview',
                      style: TextStyle(color: AppColor.green),
                    ))),
          ],
        )
      ],
    );
  }
}
