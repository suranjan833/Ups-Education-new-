import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/quiz_start_controller.dart';

class QuizStartView extends GetView<QuizStartController> {
  const QuizStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(QuizStartController());
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
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
          'Quiz',
          style: TextStyle(color: AppColor.black, fontSize: 15.w),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 16.r),
          child: Text(
            'Human Development',
            style: TextStyle(
                color: AppColor.black,
                fontSize: 15.w,
                fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          thickness: 1.3,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 16.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Total Questions: 10'),
              Text(
                'Time Left: 02:45',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Expanded(child: controller.customQuestion()),
      ]),
    );
  }
}
