import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/workshop_details_controller.dart';

class WorkshopDetailsView extends GetView<WorkshopDetailsController> {
  const WorkshopDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WorkshopDetailsController());
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
          'Workshop',
          style:
              TextStyle(color: AppColor.black.withOpacity(0.8), fontSize: 15.w),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16.r),
                color: AppColor.litegrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180.h,
                      width: 360.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://4.bp.blogspot.com/-zip2iduMjPI/TjiLt0dqrgI/AAAAAAAAACQ/1u8iRUWKJeU/s1600/Artwork.jpg"))),
                    ),
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom',
                        style: TextStyle(
                            fontSize: 17.r, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'By DR. Arvind Otta',
                      style: TextStyle(
                          fontSize: 15.r,
                          // fontWeight: FontWeight.w600,
                          color: AppColor.black.withOpacity(0.6)),
                    ),
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'We have a special course for those students who want to Crack M.Phil Clinical Psychology Entrance Exam with NETJRF Psychology. Aspirants can start their preparetions for both at the same time',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.r,
                            color: AppColor.black),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          spacing: 20,
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                Icon(
                                  Icons.g_translate_outlined,
                                  color: AppColor.grey,
                                  size: 18,
                                ),
                                const Text(' English'),
                              ],
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  color: AppColor.grey.withOpacity(0.4),
                                  fontSize: 34.r),
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                Icon(
                                  Icons.person_outline_outlined,
                                  color: AppColor.grey,
                                  size: 18,
                                ),
                                const Text('Faculty assisted'),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColor.white),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red.shade300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.r, vertical: 10.r),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            Text(
                              '\u{20B9} 35000.00',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColor.black,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.black.withOpacity(0.6)),
                            ),
                          ],
                        ),
                        Text(
                          '\u{20B9} 42000.00',
                          style: TextStyle(
                              fontSize: 17.r,
                              fontWeight: FontWeight.w400,
                              color: AppColor.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          height: 50,
                          minWidth: 160,
                          onPressed: () {},
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: AppColor.black.withOpacity(0.5))),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: AppColor.black.withOpacity(0.8),
                                fontWeight: FontWeight.w400,
                                fontSize: 15.r),
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 160,
                          onPressed: () {},
                          color: AppColor.green,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: AppColor.green)),
                          child: Text(
                            'Pay now',
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.r),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 14.r, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Self assessment',
                            style: TextStyle(
                                fontSize: 15.r,
                                // fontWeight: FontWeight.w600,
                                color: AppColor.black.withOpacity(0.6)),
                          ),
                          Text(
                            'Mock test',
                            style: TextStyle(
                                fontSize: 15.r,
                                // fontWeight: FontWeight.w600,
                                color: AppColor.black.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'We have a special course for those students who want to Crack M.Phil Clinical Psychology Entrance Exam with NETJRF Psychology. Aspirants can start their preparetions for both at the same time. We follow the specific syllbus for this course to complete all topics that we needed for M.Phil Clinical Psychology and UGC NET Psychology  Entrance Exam. No doubt, the  purpose of both Exams are different but MPhil Clinical Psychology with UGC NET Qualiification can open a new windows for your career. Sometimes in the interview, if you are NET JRF qualified it gives you extra weighte. so this is good idea to start preparings for both. You may call UPS Education prides. We have a special course. We have a special course We have a special course  No doubt, the  purpose of both Exams are different but MPhil Clinical Psychology with UGC NET Qualiification can open a new windows for your career. Sometimes in the interview, if you are NET JRF qualified it gives you extra weighte. so this is good idea to start preparings for both. You may call UPS Education prides. We have a special course. We have a special course We have a special course best results for UGC NET JRF & M.Phil Clinical Psychology Extrance Exam.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.r,
                            color: AppColor.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4.r),
                padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 16.r),
                color: AppColor.litegrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What you\'ll learn',
                      style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.r),
                    ),
                    SizedBox(
                      height: 18.r,
                    ),
                    Text(
                      'Astounding Faculty:',
                      style: TextStyle(
                          color: AppColor.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.r),
                    ),
                    Text(
                      'All the Lectures /Classes in the regular batch will be\ngiven by our experience and reowned Gold\nMedalist Faculty(Dr. Arvind Otta).',
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColor.grey,
                    ),
                    SizedBox(
                      height: 12.r,
                    ),
                    Text(
                      'Mock Test:',
                      style: TextStyle(
                          color: AppColor.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.r),
                    ),
                    Text(
                      'Mock test will also be condducted for mock practices\nbefore M.Phil Clinical Psychology entrance\nexaminations.',
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColor.grey,
                    ),
                    SizedBox(
                      height: 13.r,
                    ),
                    Text(
                      'Regular Class Test',
                      style: TextStyle(
                          color: AppColor.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.r),
                    ),
                    Text(
                      'The regular class test  will be conducted after each\ntopic to check how well you have grasped the topic.',
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.r, vertical: 10.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Key Highlights',
                      style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.r),
                    ),
                    SizedBox(
                      height: 13.r,
                    ),
                    Wrap(
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.highlight_outlined,
                          color: AppColor.green,
                          size: 18,
                        ),
                        const Text(
                          'Gold medalist faculty',
                          // style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.r,
                    ),
                    Wrap(
                      spacing: 7,
                      runSpacing: 10,
                      children: [
                        Icon(
                          Icons.highlight_outlined,
                          color: AppColor.green,
                          size: 18,
                        ),
                        const Text(
                          'Sopphisticated study materials',
                          // style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.r,
                    ),
                    Wrap(
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.highlight_outlined,
                          color: AppColor.green,
                          size: 18,
                        ),
                        const Text(
                          'Virtual classroom',
                          // style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.r,
                    ),
                    Wrap(
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.highlight_outlined,
                          color: AppColor.green,
                          size: 18,
                        ),
                        const Text(
                          'Printd study materials',
                          // style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.r,
                    ),
                    Wrap(
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.highlight_outlined,
                          color: AppColor.green,
                          size: 18,
                        ),
                        const Text(
                          'Practice Set',
                          // style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.r,
                    ),
                    Wrap(
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.highlight_outlined,
                          color: AppColor.green,
                          size: 18,
                        ),
                        const Text(
                          'Self assessment tools',
                          // style: TextStyle(color: AppColor.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17.r,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Student Feedback',
                          style: TextStyle(
                              color: AppColor.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.r),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 20,
                          onPressed: () {},
                          elevation: 3,
                          color: AppColor.white,
                          shape: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.white),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: AppColor.green,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7.r,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Arindam singh',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.r),
                        ),
                        Wrap(
                          children: [
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
                      ],
                    ),
                    SizedBox(
                      height: 8.r,
                    ),
                    const Text(
                        'The regular class test will be condcted after each topic to check how well you have grasped the topic.'),
                    SizedBox(
                      height: 15.r,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sanchita Sood',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.r),
                        ),
                        Wrap(
                          children: [
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
                      ],
                    ),
                    SizedBox(
                      height: 8.r,
                    ),
                    const Text(
                        'I would give them more than 5 stars if i could. Joining UPS Education has been one of the best decisions I took while preparing for the M.Phil Entrance Exam.'),
                    SizedBox(
                      height: 16.r,
                    ),
                  ],
                ),
              ),
            ]),
      )),
    );
  }
}
