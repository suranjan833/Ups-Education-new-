// ignore_for_file: deprecated_member_use

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeLatestUpdate extends StatelessWidget {
  const HomeLatestUpdate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(spacing: 18, runSpacing: 13, children: [
          buildfacultvideo("https://youtu.be/3It49x562b0", "10"),
          buildfacultvideo(
              "https://www.youtube.com/live/mCMd73gBL0s?feature=share", "2"),
          buildfacultvideo("https://youtu.be/Zff3rUY0iGg", "20"),
          buildfacultvideo("https://youtu.be/cGNvKV4u6zw", "1"),
          buildfacultvideo("https://youtu.be/JqfvfdmUo6k", "30"),
          buildfacultvideo("https://youtu.be/3It49x562b0", "4"),
          buildfacultvideo(
              "https://www.youtube.com/live/mCMd73gBL0s?feature=share", "12"),
        ]));
  }

  buildfacultvideo(String link, String time) {
    return Stack(
      children: [
        AnyLinkPreview(
          urlLaunchMode: LaunchMode.platformDefault,
          link: link,
          displayDirection: UIDirection.uiDirectionHorizontal,
          bodyMaxLines: 1,
          bodyTextOverflow: TextOverflow.ellipsis,
          titleStyle: TextStyle(
            color: AppColor.black,
            fontWeight: FontWeight.w400,
            fontSize: 14.w,
          ),
          bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          backgroundColor: AppColor.litegrey,
          borderRadius: 10.r,
          removeElevation: true,
          boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
          onTap: () async {
            var url = link;
            if (await canLaunch(url)) {
              await launch(url);
            }
          },
        ),
        Container(
            margin: EdgeInsets.only(top: 70.h, right: 30.w),
            alignment: Alignment.bottomCenter,
            child: Text("$time minutes")),
      ],
    );
  }
}
