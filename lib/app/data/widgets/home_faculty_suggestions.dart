// ignore_for_file: deprecated_member_use

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ups_education/app/data/config/appcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFacultySuggestions extends StatelessWidget {
  const HomeFacultySuggestions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(spacing: 18, children: [
          buildfacultvideo("https://youtu.be/3It49x562b0"),
          buildfacultvideo(
              "https://www.youtube.com/live/mCMd73gBL0s?feature=share"),
          buildfacultvideo("https://youtu.be/Zff3rUY0iGg"),
          buildfacultvideo("https://youtu.be/cGNvKV4u6zw"),
          buildfacultvideo("https://youtu.be/JqfvfdmUo6k"),
        ]));
  }

  buildfacultvideo(String link) {
    return SizedBox(
      height: 175.h,
      width: 255.w,
      child: Stack(
        children: [
          AnyLinkPreview(
            urlLaunchMode: LaunchMode.platformDefault,
            link: link,
            displayDirection: UIDirection.uiDirectionVertical,
            bodyMaxLines: 1,
            bodyTextOverflow: TextOverflow.ellipsis,
            titleStyle: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.w,
            ),
            bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
            backgroundColor: AppColor.white,
            borderRadius: 17.r,
            // removeElevation: true,
            boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
            onTap: () async {
              var url = link;
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
          ),
          Container(
            margin: REdgeInsets.only(right: 12, bottom: 10),
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.arrow_forward,
              size: 26.w,
              color: AppColor.green,
            ),
          )
        ],
      ),
    );
  }
}
