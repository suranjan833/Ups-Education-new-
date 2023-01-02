
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeOurSuccessfulStudent extends StatelessWidget {
  const HomeOurSuccessfulStudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildImage(
                "http://www.alpenglowimagesphotography.com/blog/wp-content/uploads/2019/12/joshua-tree-snow1a-1024x683.jpg"),
            buildImage(
                "https://smoodock45.files.wordpress.com/2021/08/bearing-the-image.jpg"),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildImage("https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"),
            buildImage(
                "http://www.alpenglowimagesphotography.com/blog/wp-content/uploads/2019/12/joshua-tree-snow1a-1024x683.jpg"),
          ],
        ),
      ],
    );
  }

  buildImage(String link) {
    return Stack(
      children: [
        Container(
          height: 115.h,
          width: 160.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(link),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: REdgeInsets.only(left: 5, top: 70),
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
            radius: 17.r,
            backgroundColor: AppColor.greenaa.withOpacity(0.4),
            child: CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColor.white,
              child: Icon(
                Icons.play_arrow,
                size: 17.w,
                color: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }
}
