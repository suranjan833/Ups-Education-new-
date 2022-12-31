import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/appcolor.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'UPS Education',
            style: TextStyle(
                fontFamily: 'Quicksand',
                color: AppColor.apcolor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
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
                    color: AppColor.black,
                    fontSize: 9,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Utsaah Psychological Services',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.orange,
                    fontSize: 9,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
