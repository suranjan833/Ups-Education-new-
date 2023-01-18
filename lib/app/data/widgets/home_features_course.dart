// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeFeatureCourse extends StatelessWidget {
  const HomeFeatureCourse({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
            spacing: 18,
            runSpacing: 13,
            children: [buildFeatures(), buildFeatures(), buildFeatures()]));
  }

  buildFeatures() {
    return Container(
      height: 214.h,
      width: 190.w,
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.all(10.r),
            height: 100.h,
            width: 190.w,
            decoration: BoxDecoration(
                color: Colors.brown.shade700,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImage.home_banner))),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 8.w, right: 8.w, top: 12.h, bottom: 4.h),
            child: Text(
              'Classroom',
              style: TextStyle(
                  fontSize: 15.r,
                  // fontWeight: FontWeight.w600,
                  color: AppColor.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            child: Text(
              'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.r,
                  color: AppColor.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
            child: Text(
              '\u{20B9} 42000.00 + GST',
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: AppColor.black),
            ),
          ),
        ],
      ),
    );
  }
}
