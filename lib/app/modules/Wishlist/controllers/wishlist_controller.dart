import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:ups_education/app/data/config/config.dart';

class WishlistController extends GetxController {
  var refreshControllerForWishList = RefreshController();
  buildRemove() {
    Get.defaultDialog(
        title: '',
        content: Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Wrap(
            direction: Axis.vertical,
            runSpacing: 15.r,
            spacing: 20.r,
            children: [
              const Text(
                'Want to remove?',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Wrap(
                spacing: 20,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.r, vertical: 4.r),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        border: Border.all(color: AppColor.green),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        'No',
                        style: TextStyle(color: AppColor.green),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.r, vertical: 4.r),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        // border: Border.all(color: AppColor.),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        'Yes',
                        style: TextStyle(color: AppColor.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
