import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ups_education/app/data/config/appcolor.dart';

class SelfAssessment extends StatelessWidget {
  const SelfAssessment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: REdgeInsets.all(9),
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(18.r)),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  padding: REdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 244, 224),
                      borderRadius: BorderRadius.circular(13.r)),
                  child: const Icon(Icons.home),
                ),
                title: Text(
                  'Psychology Entrance',
                  style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Free mock human development',
                    style:
                        TextStyle(fontSize: 13.w, fontWeight: FontWeight.w400)),
              ),
              Wrap(
                spacing: 30,
                runSpacing: 10,
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text('01:30 min'),
                  const Text('100 marks'),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: const Color.fromARGB(255, 224, 244, 224),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: AppColor.green,
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: const Color.fromARGB(255, 224, 244, 224),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColor.green,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 17.h,
        ),
        Container(
          padding: REdgeInsets.all(9),
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(18.r)),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  padding: REdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 244, 224),
                      borderRadius: BorderRadius.circular(13.r)),
                  child: const Icon(Icons.home),
                ),
                title: Text(
                  'Psychology Entrance',
                  style: TextStyle(fontSize: 15.w, fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Free mock human development',
                    style:
                        TextStyle(fontSize: 13.w, fontWeight: FontWeight.w400)),
              ),
              Wrap(
                spacing: 40,
                runSpacing: 10,
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text('01:30 min'),
                  const Text('100 marks'),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.error,
                      color: AppColor.white,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
