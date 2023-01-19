import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColor.apcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'UPS Education',
            style: TextStyle(
                fontFamily: 'Quicksand',
                color: AppColor.lite,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
          Wrap(
            spacing: 5,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Text(
                'A unit of',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: AppColor.litegrey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Utsaah Psychological Services',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
