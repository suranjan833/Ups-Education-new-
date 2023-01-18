// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeFreeNotes extends StatelessWidget {
  const HomeFreeNotes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              buildfacultvideo(
                  'We don\'t want to see war of word between india an pakistan: US'),
              buildfacultvideo(
                  'Please take it down: Anushka Sharma on PUMA using her of publicity'),
              buildfacultvideo(
                  'IFS Officer shares pic of green snake between mushrooms; people say'),
              buildfacultvideo(
                  'We don\'t want to see war of word between india an pakistan: US'),
              buildfacultvideo(
                  'Please take it down: Anushka Sharma on PUMA using her of publicity'),
              buildfacultvideo(
                  'IFS Officer shares pic of green snake between mushrooms; people say')
            ])),
        SizedBox(
          height: 9.h,
        ),
        SingleChildScrollView(
            // reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              buildfacultvideo(
                  'We don\'t want to see war of word between india an pakistan: US'),
              buildfacultvideo(
                  'Please take it down: Anushka Sharma on PUMA using her of publicity'),
              buildfacultvideo(
                  'IFS Officer shares pic of green snake between mushrooms; people say'),
              buildfacultvideo(
                  'We don\'t want to see war of word between india an pakistan: US'),
              buildfacultvideo(
                  'Please take it down: Anushka Sharma on PUMA using her of publicity'),
              buildfacultvideo(
                  'IFS Officer shares pic of green snake between mushrooms; people say')
              // buildfacultvideo(
              //   "https://youtu.be/3It49x562b0",
              // ),
              // buildfacultvideo(
              //   "https://www.youtube.com/live/mCMd73gBL0s?feature=share",
              // ),
              // buildfacultvideo(
              //   "https://youtu.be/Zff3rUY0iGg",
              // ),
              // buildfacultvideo(
              //   "https://youtu.be/cGNvKV4u6zw",
              // ),
              // buildfacultvideo(
              //   "https://youtu.be/JqfvfdmUo6k",
              // ),
              // buildfacultvideo(
              //   "https://youtu.be/3It49x562b0",
              // ),
              // buildfacultvideo(
              //   "https://www.youtube.com/live/mCMd73gBL0s?feature=share",
              // ),
            ])),
      ],
    );
  }

  buildfacultvideo(String title) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      margin: EdgeInsets.only(
        right: 7.w,
      ),
      decoration: BoxDecoration(
          color: AppColor.white, borderRadius: BorderRadius.circular(12.r)),
      height: 80.h,
      width: 260.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60.h,
            width: 80.w,
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(13.r),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImage.home_banner))),
          ),
          Container(
            width: 150.w,
            padding:
                EdgeInsets.only(bottom: 3.h, top: 3.h, left: 3.w, right: 3.w),
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(fontSize: 14.w, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      // AnyLinkPreview(
      //   urlLaunchMode: LaunchMode.platformDefault,
      //   link: link,
      //   displayDirection: UIDirection.uiDirectionHorizontal,
      //   bodyMaxLines: 1,
      //   bodyTextOverflow: TextOverflow.ellipsis,
      //   titleStyle: TextStyle(
      //     color: AppColor.black,
      //     fontWeight: FontWeight.w400,
      //     fontSize: 14.w,
      //   ),
      //   bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
      //   backgroundColor: AppColor.litegrey,
      //   borderRadius: 10.r,
      //   removeElevation: true,
      //   boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
      //   onTap: () async {
      //     var url = link;
      //     if (await canLaunch(url)) {
      //       await launch(url);
      //     }
      //   },
      // ),
    );
  }
}
