import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/psychology_entrance_controller.dart';

class PsychologyEntranceView extends GetView<PsychologyEntranceController> {
  const PsychologyEntranceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(PsychologyEntranceController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: AppColor.litegrey,
              radius: 16,
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColor.black,
                size: 18,
              ),
            ),
          ),
        ),
        title: Text(
          'Course',
          style: TextStyle(color: AppColor.black, fontSize: 16.w),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(vertical: 19),
                  child: Text(
                    'Psychology Entrance',
                    style:
                        TextStyle(fontSize: 19.w, fontWeight: FontWeight.w700),
                  ),
                ),
                Wrap(
                  spacing: 18.w,
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  runSpacing: 12.w,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: REdgeInsets.symmetric(
                            horizontal: 17.r, vertical: 10.r),
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(19.r)),
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: REdgeInsets.symmetric(
                            horizontal: 15.r, vertical: 10.r),
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            border: Border.all(
                                color: AppColor.black.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          'Classroom',
                          style: TextStyle(
                              color: AppColor.black.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: REdgeInsets.symmetric(
                            horizontal: 15.r, vertical: 10.r),
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            border: Border.all(
                                color: AppColor.black.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          'Live',
                          style: TextStyle(
                              color: AppColor.black.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: REdgeInsets.symmetric(
                            horizontal: 15.r, vertical: 10.r),
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            border: Border.all(
                                color: AppColor.black.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          'Online',
                          style: TextStyle(
                              color: AppColor.black.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: REdgeInsets.symmetric(
                            horizontal: 15.r, vertical: 10.r),
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            border: Border.all(
                                color: AppColor.black.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Text(
                          'Distance',
                          style: TextStyle(
                              color: AppColor.black.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: const Text('View all'))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 17.w,
                    runSpacing: 10.w,
                    children: [
                      questionAnswer(
                          "https://tse1.mm.bing.net/th?id=OIP.HxTHqLntcqIYHVSPq2JjtAHaHa&pid=Api&P=0"),
                      questionAnswer(
                          "https://4.bp.blogspot.com/-zip2iduMjPI/TjiLt0dqrgI/AAAAAAAAACQ/1u8iRUWKJeU/s1600/Artwork.jpg"),
                      questionAnswer(
                          "https://i.pinimg.com/736x/64/17/44/641744638647da953229fd4423dc571c.jpg"),
                      questionAnswer(
                          "https://www.winspireacademy.com/wp-content/uploads/2019/01/kaloor-church_ad_12x10cm587151311..jpg"),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 17.w,
                    runSpacing: 10.w,
                    children: [
                      questionAnswer(
                          "https://i.pinimg.com/736x/41/9e/47/419e479fb41da43dde09a70b429d7413.jpg"),
                      questionAnswer(
                          "https://i.pinimg.com/736x/e7/cf/63/e7cf633b919620e47edfd04125c3482e.jpg"),
                      questionAnswer(
                          "https://i.pinimg.com/originals/f3/c9/92/f3c992dd3415307c440c336147ba7328.jpg"),
                      questionAnswer(
                          "https://tse3.mm.bing.net/th?id=OIP.njhX6Y8Fzep8E9YiTmAAlgHaKT&pid=Api&P=0"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Workshop',
                      style: TextStyle(
                          fontSize: 19.w, fontWeight: FontWeight.w700),
                    ),
                    TextButton(onPressed: () {}, child: const Text('View all'))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 17.w,
                    runSpacing: 10.w,
                    children: [
                      questionAnswer(
                          "https://bizmagsb.com/wp-content/uploads/2019/08/ThinkNetwork_AD.jpg"),
                      questionAnswer(
                          "https://i.ytimg.com/vi/MvCuAcZZjVw/maxresdefault.jpg"),
                      questionAnswer(
                          "https://i.pinimg.com/originals/14/33/d2/1433d28a5b9338ddff9221be707cf7d0.jpg"),
                      questionAnswer(
                          "https://nili.uoregon.edu/files/2015/12/Summer-Institute-2016-ad.jpg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget questionAnswer(String imglink) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.r),
      height: 270.h,
      width: 250.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(13.r)),
      padding: EdgeInsets.all(2.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 140.h,
              width: 250.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imglink)))),
          Text(
            'By DR. Arvind Otta',
            style: TextStyle(
                fontSize: 15.r,
                // fontWeight: FontWeight.w600,
                color: AppColor.black.withOpacity(0.6)),
          ),
          Text(
            'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.r,
                color: AppColor.black),
          ),
          Wrap(
            children: [
              Text(
                '4.5',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.r,
                    color: AppColor.black),
              ),
              Icon(
                Icons.star,
                size: 18.r,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 18.r,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 18.r,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 18.r,
                color: Colors.amber,
              )
            ],
          ),
          Divider(
            color: AppColor.black.withOpacity(0.3),
            thickness: 1.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.r, vertical: 3.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColor.green),
                child: Text(
                  '9% off',
                  style: TextStyle(color: AppColor.white),
                ),
              ),
              Text(
                '\u{20B9} 16000.00',
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black.withOpacity(0.5)),
              ),
              Text(
                '\u{20B9} 42000.00',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: AppColor.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
