import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/cart_details_controller.dart';

class CartDetailsView extends GetView<CartDetailsController> {
  const CartDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(CartDetailsController());
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
            'Cart',
            style: TextStyle(color: AppColor.black, fontSize: 15.w),
          ),
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 13.r, horizontal: 2.r),
              child: Text(
                'Course Summary',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.r,
                    color: AppColor.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Course',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Fee',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Divider(
                thickness: 1,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              height: 10.r,
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'UGC NET JRF & M.Phil Clinical\nPsychology Entrance - Classroom',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.black),
                      ),
                      InkWell(
                        onTap: () {
                          controller.buildRemove();
                        },
                        child: SvgPicture.asset(AppImage.del),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'By DR. Arvind Otta',
                        style: TextStyle(
                            // fontWeight: FontWeight.w600,
                            color: AppColor.black.withOpacity(0.5)),
                      ),
                      Text(
                        '\u{20B9} 17000.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              child: Padding(
                padding: REdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UGC NET JRF & M.Phil Clinical\nPsychology Entrance - Classroom',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColor.black),
                        ),
                        InkWell(
                          onTap: () {
                            controller.buildRemove();
                          },
                          child: SvgPicture.asset(AppImage.del),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'By DR. Arvind Otta',
                          style: TextStyle(
                              // fontWeight: FontWeight.w600,
                              color: AppColor.black.withOpacity(0.5)),
                        ),
                        Text(
                          '\u{20B9} 34000.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColor.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.r),
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                color: AppColor.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coupon',
                    style: TextStyle(fontSize: 15.w),
                  ),
                  const Text('Enter your coupon code if you have one'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 13.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.coupon,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(10.0.r),
                                child: SvgPicture.asset(
                                  AppImage.coupon,
                                  height: 10.h,
                                ),
                              ),
                              hintText: 'Enter Coupon Code',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide:
                                    BorderSide(color: AppColor.white),
                              ),
                              fillColor: AppColor.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.r, horizontal: 20.r),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide:
                                    BorderSide(color: AppColor.white),
                              ),
                            ),
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.r, horizontal: 15.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.r),
                            color: AppColor.green,
                          ),
                          child: Icon(
                            Icons.search,
                            color: AppColor.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14.r, bottom: 10.r),
              child: Text('Cart totals',
                  style: TextStyle(
                      color: AppColor.black.withOpacity(0.8),
                      fontWeight: FontWeight.w600,
                      fontSize: 15.r)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Subtotal'),
                Text(
                  '\u{20B9} 42000.00',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 9.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Tax'),
                  Text(
                    '\u{20B9} 7560.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Discount'),
                Text(
                  '\u{20B9} 1000.00',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Center(
              child: Padding(
                padding: REdgeInsets.symmetric(
                  horizontal: 4.r,
                ),
                child: MaterialButton(
                  height: 53.h,
                  minWidth: 150.w,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.green),
                      borderRadius: BorderRadius.circular(20.r)),
                  color: AppColor.green,
                  onPressed: () {},
                  child: Text(
                    'Proceed to pay',
                    style: TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                ),
              ),
            )
          ],
        ),
          ),
        ));
  }
}
