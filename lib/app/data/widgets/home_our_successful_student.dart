import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeOurSuccessfulStudent extends StatelessWidget {
  const HomeOurSuccessfulStudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [buildImage(), buildImage()],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [buildImage(), buildImage()],
        ),
      ],
    );
  }

  buildImage() {
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: 160.w,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12.r),
            image: DecorationImage(
              image: AssetImage(AppImage.home_banner),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: REdgeInsets.only(left: 5, top: 63),
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
            radius: 13.r,
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
