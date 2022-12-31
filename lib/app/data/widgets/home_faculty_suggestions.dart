// ignore_for_file: deprecated_member_use

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/appcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFacultySuggestions extends StatelessWidget {
  const HomeFacultySuggestions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(spacing: 18, children: [
          buildfacultvideo("https://youtu.be/3It49x562b0"),
          buildfacultvideo(
              "https://www.youtube.com/live/mCMd73gBL0s?feature=share"),
          buildfacultvideo("https://youtu.be/Zff3rUY0iGg"),
          buildfacultvideo("https://youtu.be/cGNvKV4u6zw"),
          buildfacultvideo("https://youtu.be/JqfvfdmUo6k"),
        ]));
  }

  buildfacultvideo(String link) {
    return SizedBox(
      height: 175.h,
      width: 255.w,
      child: Stack(
        children: [
          AnyLinkPreview(
            urlLaunchMode: LaunchMode.platformDefault,
            link: link,
            displayDirection: UIDirection.uiDirectionVertical,
            bodyMaxLines: 1,
            bodyTextOverflow: TextOverflow.ellipsis,
            titleStyle: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.w,
            ),
            bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
            backgroundColor: AppColor.white,
            borderRadius: 17.r,
            // removeElevation: true,
            boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
            onTap: () async {
              var url = link;
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
          ),
          Container(
            margin: REdgeInsets.only(right: 12, bottom: 10),
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.arrow_forward,
              size: 26.w,
              color: AppColor.green,
            ),
          )
        ],
      ),
    );
  }
}

class HomeRecentQuizze extends StatelessWidget {
  const HomeRecentQuizze({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 14,
        children: [
          buildCard(),
          buildCard(),
          buildCard(),
          buildCard(),
        ],
      ),
    );
  }

  buildCard() {
    return Container(
      height: 170.h,
      width: 150.w,
      padding: REdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.beach_access,
            size: 36.w,
            color: AppColor.apcolor,
          ),
          Text(
            'UPS Education Testing',
            style: TextStyle(fontSize: 15.r, fontWeight: FontWeight.w400),
          ),
          Wrap(
            spacing: 8,
            children: [
              Text(
                '5 Questions',
                style: TextStyle(
                  fontSize: 12.r,
                ),
              ),
              Text(
                '|',
                style: TextStyle(fontSize: 19.r, fontWeight: FontWeight.w400),
              ),
              Text(
                '20 min',
                style: TextStyle(
                  fontSize: 12.r,
                ),
              )
            ],
          ),
          Container(
            height: 36.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 180, 222, 181),
                  Color.fromARGB(255, 180, 222, 181),
                ],
                begin: FractionalOffset.bottomLeft,
                end: Alignment.topRight,
                stops: [0.4, 0.7],
                tileMode: TileMode.repeated,
              ),
            ),
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: AppColor.green,
                ),
                label: Text(
                  'Start Quiz',
                  style: TextStyle(color: AppColor.green),
                )),
          ),
          // MaterialButton(
          //   onPressed: () {},
          //   shape: const OutlineInputBorder(),
          // )
        ],
      ),
    );
  }
}

class HomeLatestUpdate extends StatelessWidget {
  const HomeLatestUpdate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(spacing: 18, runSpacing: 13, children: [
          buildfacultvideo("https://youtu.be/3It49x562b0"),
          buildfacultvideo(
              "https://www.youtube.com/live/mCMd73gBL0s?feature=share"),
          buildfacultvideo("https://youtu.be/Zff3rUY0iGg"),
          buildfacultvideo("https://youtu.be/cGNvKV4u6zw"),
          buildfacultvideo("https://youtu.be/JqfvfdmUo6k"),
        ]));
  }

  buildfacultvideo(String link) {
    return AnyLinkPreview(
      urlLaunchMode: LaunchMode.platformDefault,
      link: link,
      displayDirection: UIDirection.uiDirectionHorizontal,
      bodyMaxLines: 1,
      bodyTextOverflow: TextOverflow.ellipsis,
      titleStyle: TextStyle(
        color: AppColor.black,
        fontWeight: FontWeight.w400,
        fontSize: 14.w,
      ),
      bodyStyle: const TextStyle(color: Colors.grey, fontSize: 12),
      backgroundColor: AppColor.litegrey,
      borderRadius: 10.r,
      removeElevation: true,
      boxShadow: [BoxShadow(blurRadius: 3.r, color: Colors.grey)],
      onTap: () async {
        var url = link;
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
    );
  }
}

class HomeOurSuccessfulStudent extends StatelessWidget {
  const HomeOurSuccessfulStudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildImage(
                "http://www.alpenglowimagesphotography.com/blog/wp-content/uploads/2019/12/joshua-tree-snow1a-1024x683.jpg"),
            buildImage(
                "https://smoodock45.files.wordpress.com/2021/08/bearing-the-image.jpg"),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildImage("https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"),
            buildImage(
                "http://www.alpenglowimagesphotography.com/blog/wp-content/uploads/2019/12/joshua-tree-snow1a-1024x683.jpg"),
          ],
        ),
      ],
    );
  }

  buildImage(String link) {
    return Stack(
      children: [
        Container(
          height: 115.h,
          width: 160.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(link),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: REdgeInsets.only(left: 5, top: 70),
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
            radius: 17.r,
            backgroundColor: AppColor.greenaa.withOpacity(0.4),
            child: CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColor.white,
              child: Icon(
                Icons.play_arrow,
                size: 17.w,
                color: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomeTestimonials extends StatelessWidget {
  const HomeTestimonials({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 13,
        children: [
          buildCategory(),
          buildCategory(),
          buildCategory(),
          buildCategory(),
        ],
      ),
    );
  }

  buildCategory() {
    return InkWell(
      onTap: () {
        buildDetailspop();
      },
      child: Container(
        padding: REdgeInsets.symmetric(horizontal: 10, vertical: 4),
        width: 240.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.white,
        ),
        child: Column(
          children: [
            Container(
              margin: REdgeInsets.all(5),
              width: 250.w,
              height: 70.h,
              child: ListTile(
                contentPadding: REdgeInsets.all(10),
                horizontalTitleGap: 10,
                minVerticalPadding: 5,
                minLeadingWidth: 2,
                leading: Container(
                  width: 35.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"))),
                  // child: Image.network(
                  //     "https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"),
                ),
                title: Text(
                  'Sushruta Sahu',
                  style: TextStyle(
                      color: AppColor.black, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'NET Qualified Dec 2018',
                  style: TextStyle(fontSize: 15.r),
                ),
              ),
            ),
            const Text(
                'I would give them more than 5 star if I\ncould. Joining UPS Education has been\none of the best decisioons I took while...')
          ],
        ),
      ),
    );
  }

  buildDetailspop() {
    Get.defaultDialog(
      title: '',
      radius: 30.r,
      // barrierDismissible: false,
      actions: [
        CircleAvatar(
          backgroundColor: AppColor.litegrey,
          child: Icon(
            Icons.arrow_back_rounded,
            color: AppColor.black.withOpacity(0.5),
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColor.litegrey,
          child: Icon(
            Icons.arrow_forward_rounded,
            color: AppColor.black,
          ),
        )
      ],
      contentPadding: EdgeInsets.only(left: 10.r, right: 10.r, bottom: 14.r),
      content: Column(
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.only(right: 13.r),
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 14,
                backgroundColor: Colors.red.shade100,
                child: const Icon(
                  Icons.close,
                  size: 17,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Container(
            margin: REdgeInsets.all(5),
            width: 250.w,
            height: 70.h,
            child: ListTile(
              contentPadding: REdgeInsets.symmetric(horizontal: 10),
              horizontalTitleGap: 10,
              minVerticalPadding: 5,
              minLeadingWidth: 2,
              leading: Container(
                width: 45.w,
                height: 100.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://pbs.twimg.com/media/DkAWrHQUcAEklkt.jpg"))),
              ),
              title: Text(
                'Sushruta Sahu',
                style: TextStyle(
                    color: AppColor.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'NET Qualified Dec 2018',
                style: TextStyle(fontSize: 15.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: const Text(
                "It was a good decision for me to take admission in ups educations for M.Phil. Clinical Psychology entrance. I have learned a lot from sir. The notes and e-learning portal is very helpful. It really helps to know how much you are prepared."),
          )
        ],
      ),
    );
  }
}
