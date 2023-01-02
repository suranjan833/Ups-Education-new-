
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      height: 170.h,
      width: 150.w,
      padding: REdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.beach_access,
            size: 36.w,
            color: AppColor.apcolor,
          ),
          Text(
            'UPS Education Testing',
            style: TextStyle(fontSize: 15.r, fontWeight: FontWeight.w400),
          ),
          Wrap(
            spacing: 8,
            children: [
              Text(
                '5 Questions',
                style: TextStyle(
                  fontSize: 12.r,
                ),
              ),
              Text(
                '|',
                style: TextStyle(fontSize: 19.r, fontWeight: FontWeight.w400),
              ),
              Text(
                '20 min',
                style: TextStyle(
                  fontSize: 12.r,
                ),
              )
            ],
          ),
          Container(
            height: 36.h,
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
