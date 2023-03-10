import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/CartDetails/views/cart_details_view.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CartController());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Obx(
        () => controller.cartModel.value.data?.cartdata != null
            ? Container(
                height: 420.h,
                width: 428.w,
                margin: REdgeInsets.all(18),
                child: ListView.builder(
                    itemCount:
                        controller.cartModel.value.data?.cartdata?.length,
                    itemBuilder: (context, index) {
                      // ignore: unused_local_variable
                      var data =
                          controller.cartModel.value.data?.cartdata![index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            child: Padding(
                              padding: REdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'UGC NET JRF & M.Phil Clinical\nPsychology Entrance - Classroom',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.black),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.buildRemove();
                                        },
                                        child: CircleAvatar(
                                          radius: 19.r,
                                          backgroundColor: Colors.red.shade100,
                                          child: SvgPicture.asset(AppImage.del),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'By DR. Arvind Otta',
                                        style: TextStyle(
                                            // fontWeight: FontWeight.w600,
                                            color: AppColor.black
                                                .withOpacity(0.5)),
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
                          SizedBox(
                            height: 20.h,
                          ),
                          Card(
                            child: Padding(
                              padding: REdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'UGC NET JRF & M.Phil Clinical\nPsychology Entrance - Classroom',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.black),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.buildRemove();
                                        },
                                        child: CircleAvatar(
                                          radius: 19.r,
                                          backgroundColor: Colors.red.shade100,
                                          child: SvgPicture.asset(AppImage.del),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'By DR. Arvind Otta',
                                        style: TextStyle(
                                            // fontWeight: FontWeight.w600,
                                            color: AppColor.black
                                                .withOpacity(0.5)),
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
                          const Spacer(),
                          Padding(
                            padding: REdgeInsets.symmetric(horizontal: 4),
                            child: MaterialButton(
                              height: 50.h,
                              minWidth: 150.w,
                              shape: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.green),
                                  borderRadius: BorderRadius.circular(18.r)),
                              color: AppColor.green,
                              onPressed: () {
                                Get.to(const CartDetailsView());
                              },
                              child: Wrap(
                                spacing: 6.w,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                runAlignment: WrapAlignment.center,
                                children: [
                                  Text(
                                    'Continue',
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17.r),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: AppColor.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              )
            : Container(
                width: 428.w,
                height: 100.h,
                color: AppColor.focolor,
                padding: EdgeInsets.all(20.h),
                child: const Center(child: Text("No Cart Data Available"))),
      ),
    );
  }
}
