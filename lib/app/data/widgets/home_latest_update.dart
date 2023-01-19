// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeLatestUpdate extends StatelessWidget {
  const HomeLatestUpdate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(spacing: 18, runSpacing: 13, children: [
          buildfacultvideo('a minute ago',
              'We don\'t want to see war of word between india an pakistan: US'),
          buildfacultvideo('15 minutes ago',
              'Please take it down: Anushka Sharma on PUMA using her of publicity'),
          buildfacultvideo('a minute ago',
              'IFS Officer shares pic of green snake between mushrooms; people say')
        ]));
  }

  buildfacultvideo(String time, String title) {
    return Material(
      color: AppColor.litegrey,
      elevation: 0.6,
      child: SizedBox(
        height: 88.h,
        width: 400.w,
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
                      image: AssetImage(AppImage.home_banner))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200.w,
                  padding: EdgeInsets.only(
                      bottom: 4.h, top: 2.h, left: 10.w, right: 10.w),
                  child: Text(
                    title,
                    maxLines: 3,
                    style:
                        TextStyle(fontSize: 13.w, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 2.h, right: 13.w, left: 10.w, bottom: 6.h),
                    // alignment: Alignment.center,
                    child: Text(time)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
