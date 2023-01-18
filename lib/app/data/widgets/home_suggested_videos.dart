// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeSuggestedVideos extends StatelessWidget {
  const HomeSuggestedVideos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 18,
        children: [
          buildVideoScroll(),
          buildVideoScroll(),
          buildVideoScroll()
          // buildVideoScroll(
          //     "https://www.youtube.com/live/3xKq9CtYLqw?feature=share"),
          // buildVideoScroll("https://youtu.be/lE6RYpe9IT0"),
          // buildVideoScroll("https://youtu.be/eKFTSSKCzWA"),
          // buildVideoScroll("https://youtu.be/Hg1-NHJ7-sY"),
          // buildVideoScroll("https://www.youtube.com/watch?v=jPwWa6InIHU"),
        ],
      ),
    );
  }

  buildVideoScroll() {
    return SizedBox(
      height: 165.h,
      width: 255.w,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(17.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: AppColor.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17.r),
                        topRight: Radius.circular(17.r),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AppImage.home_banner))),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 8.h, bottom: 8.h, left: 15.w, right: 30.w),
                  child: Text(
                    'Introduction To Psychology MA/Msc 2023',
                    style:
                        TextStyle(fontSize: 14.w, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          // AnyLinkPreview(
          //   urlLaunchMode: LaunchMode.platformDefault,
          //   link: link,
          //   displayDirection: UIDirection.uiDirectionVertical,
          //   bodyMaxLines: 1,
          //   bodyTextOverflow: TextOverflow.ellipsis,
          //   titleStyle: TextStyle(
          //     color: AppColor.black,
          //     fontWeight: FontWeight.w400,
          //     fontSize: 14.w,
          //   ),
          //   bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
          //   backgroundColor: AppColor.white,
          //   borderRadius: 30.r,
          //   removeElevation: true,
          //   boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
          //   onTap: () async {
          //     var url = link;
          //     if (await canLaunch(url)) {
          //       await launch(url);
          //     }
          //   },
          // ),
          Container(
            margin: REdgeInsets.only(left: 20, top: 10),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: AppColor.greenaa.withOpacity(0.4),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: AppColor.white,
                child: Icon(
                  Icons.play_arrow,
                  size: 30.w,
                  color: AppColor.green,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
