import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/widgets/home_latest_update.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';

import '../controllers/exam_info_controller.dart';

class ExamInfoView extends GetView<ExamInfoController> {
  const ExamInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(ExamInfoController());
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
          'Exam Info',
          style: TextStyle(color: AppColor.black, fontSize: 16.w),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: const HomeLatestUpdate(),
        ),
      ),
    );
  }
}
