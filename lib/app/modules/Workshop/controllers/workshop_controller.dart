import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/data/model/categorywise_course_model.dart';

class WorkshopController extends GetxController {
  var searchController = TextEditingController();
  var categorywiseCourseModel = CategoryWiseCourseModel().obs;
  dynamic argumentData = Get.arguments;

  @override
  void onInit() {
    categoryWiseCourseData();
    super.onInit();
  }

  Future categoryWiseCourseData() async {
    var courseId = argumentData["id"] ?? "19";
    var data = {"category_id": courseId};
    var response = await dioPost(endUrl: "/appcategorywisecourse", data: data);
    if (response.statusCode == 200) {
      return categorywiseCourseModel(
          CategoryWiseCourseModel.fromJson(response.data));
    }
  }
}
