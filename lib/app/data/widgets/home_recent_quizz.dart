import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

class HomeRecentQuizze extends StatelessWidget {
  const HomeRecentQuizze({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 14,
        children: [
          buildCard(),
          buildCard(),
          buildCard(),
          buildCard(),
        ],
      ),
    );
  }

  buildCard() {
    return Container(
      height: 160.h,
      width: 160.w,
      padding:
          EdgeInsets.only(left: 10.w, right: 12.w, top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            AppImage.quiz,
            height: 40.h,
          ),
          SizedBox(
            width: 135.w,
            child: Text(
              'UPS Education Testing',
              maxLines: 1,
              style: TextStyle(
                fontSize: 13.w,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: 135.w,
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 12.w,
              children: [
                Text(
                  '5 Questions',
                  style: TextStyle(
                    fontSize: 12.w,
                  ),
                ),
                Container(
                  height: 13.h,
                  width: 1,
                  color: AppColor.black,
                ),
                Text(
                  '20 min',
                  style: TextStyle(
                    fontSize: 12.w,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 33.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 180, 222, 181),
                  Color.fromARGB(255, 180, 222, 181),
                ],
                begin: FractionalOffset.bottomLeft,
                end: Alignment.topRight,
                stops: [0.4, 0.7],
                tileMode: TileMode.repeated,
              ),
            ),
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: AppColor.green,
                ),
                label: Text(
                  'Start Quiz',
                  style: TextStyle(color: AppColor.green),
                )),
          ),
          // MaterialButton(
          //   onPressed: () {},
          //   shape: const OutlineInputBorder(),
          // )
        ],
      ),
    );
  }
}
