import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/app_image.dart';
import 'package:ups_education/app/data/config/appcolor.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';

import '../controllers/internship_controller.dart';

class InternshipView extends GetView<InternshipController> {
  const InternshipView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(InternshipController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: Padding(
            padding: EdgeInsets.all(8.0.r),
            child: InkWell(
              onTap: () {
                Get.to(BottomNavigationBarView());
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
            'Intership',
            style: TextStyle(
                color: AppColor.black.withOpacity(0.8), fontSize: 15.w),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            // height: 1290.h,
            margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
            // padding: REdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(vertical: 14),
                  child: TextFormField(
                    controller: controller.searchController,
                    decoration: InputDecoration(
                      focusColor: AppColor.white,
                      hoverColor: AppColor.white,
                      contentPadding:
                          REdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      hintText: 'What do you want to learn?',
                      suffixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: AppColor.white,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(15))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.black.withOpacity(0.6)),
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(20))),
                    ),
                  ),
                ),
                Padding(
                  padding: REdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Intership',
                    style:
                        TextStyle(fontSize: 18.w, fontWeight: FontWeight.w600),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 190,
                              width: 150.w,
                              padding: EdgeInsets.all(2.r),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(10.r),
                                    height: 78.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                AppImage.home_banner))),
                                  ),
                                  Text(
                                    'By DR. Arvind Otta',
                                    style: TextStyle(
                                        fontSize: 15.r,
                                        // fontWeight: FontWeight.w600,
                                        color: AppColor.black.withOpacity(0.6)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      height: 70.h,
                                      width: 140.w,
                                      child: Text(
                                        'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.r,
                                            color: AppColor.black),
                                      ),
                                    ),
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.r, vertical: 3.r),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColor.green),
                                        child: Text(
                                          '9% off',
                                          style:
                                              TextStyle(color: AppColor.white),
                                        ),
                                      ),
                                      Text(
                                        '\u{20B9} 42000.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 190,
                              width: 150.w,
                              padding: EdgeInsets.all(2.r),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(10.r),
                                    height: 78.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                AppImage.home_banner))),
                                  ),
                                  Text(
                                    'By DR. Arvind Otta',
                                    style: TextStyle(
                                        fontSize: 15.r,
                                        // fontWeight: FontWeight.w600,
                                        color: AppColor.black.withOpacity(0.6)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      height: 70.h,
                                      width: 140.w,
                                      child: Text(
                                        'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.r,
                                            color: AppColor.black),
                                      ),
                                    ),
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\u{20B9} 53000.00',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black
                                                .withOpacity(0.5)),
                                      ),
                                      Text(
                                        '\u{20B9} 42000.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        GridView.count(
                          // padding: EdgeInsets.all(7.r),
                          scrollDirection: Axis.vertical,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 20.0,
                          shrinkWrap: true,
                          children: List.generate(
                            4,
                            (index) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6.r),
                                    height: 78.h,
                                    width: 170.w,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                AppImage.home_banner))),
                                  ),
                                  Text(
                                    'By DR. Arvind Otta',
                                    style: TextStyle(
                                        fontSize: 15.r,
                                        // fontWeight: FontWeight.w600,
                                        color: AppColor.black.withOpacity(0.6)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      height: 70.h,
                                      width: 140.w,
                                      child: Text(
                                        'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.r,
                                            color: AppColor.black),
                                      ),
                                    ),
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\u{20B9} 53000.00',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black
                                                .withOpacity(0.5)),
                                      ),
                                      Text(
                                        '\u{20B9} 42000.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        )));
  }
}
