// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ups_education/app/data/config/config.dart';
// import 'package:ups_education/app/data/model/home_page_model.dart';
// import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

// class HomeVideoHorizontalList extends StatelessWidget {
//   final Upshomepaid? upshomepaid;
//   const HomeVideoHorizontalList({Key? key, this.upshomepaid}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
   
//     String type = "";
//     if (upshomepaid!.type == "facultysuggestion") {
//       type = upshomepaid!.type!;
//     } else if (upshomepaid!.title! == "Featured Course") {
//       type = upshomepaid!.title!;
//     } else if (upshomepaid!.type == "recentquizzes") {
//       type = upshomepaid!.type!;
//     }
//     // ignore: unused_local_variable
//     var controller = Get.put(HomeController());
//     return (type == "facultysuggestion" ||
//             type == "Featured Course" ||
//             type == "recentquizzes")
//         ? Container(
//             height: type == "recentquizzes"
//                 ? 230
//                 : type == "Featured Course"
//                     ? 240
//                     : 300,
//             color: Colors.white,
//             padding:
//                 const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                         flex: 8,
//                         child: Text(
//                         upshomepaid!.title!,
                        
//                           maxLines: 2,
                        
//                         )),
//                     SizedBox(
//                       height: 35,
//                       child: TextButton(
//                         child: Text(
//                           "View All",
                         
//                         ),
//                         onPressed: () {
//                           if (upshomepaid!.viewAll!.isNotEmpty) {
//                             openWebview(upshomepaid!.viewAll!,
//                                 upshomepaid!.title!);
//                           } else if (upshomepaid!.title! ==
//                               "Faculty Suggestions") {
//                             openScreenAsBottomToTop(context,
//                                 FacultySuggestion(upshomepaid!.items!));
//                           } else {
//                             if (upshomepaid!.title ==
//                                 "Suggested Video") {
//                               allDataview = AllProductE.sugestedVideo;
//                             } else if (upshomepaid!.title ==
//                                 "Our Successful Students") {
//                               allDataview = AllProductE.studentReview;
//                             } else if (upshomepaid!.title ==
//                                 "Free Notes") {
//                               allDataview = AllProductE.freeNote;
//                             }
//                           }
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       shrinkWrap: true,
//                       children: type == "facultysuggestion"
//                           ? getListItem(widget.upshomepaid!.items!,
//                               _horizontalGridItemHeight, type)
//                           : _getGridItem(widget.upshomepaid!.items!,
//                               _horizontalGridItemHeight, type),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         : Container(
//             height: _horizontalListHeight,
//             padding:
//                 const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
//             color: Colors.white,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                         flex: 8,
//                         child: DxTextBlack(
//                           upshomepaid!.title!,
//                           mBold: true,
//                           maxLine: 2,
//                           mSize: 18,
//                         )),
//                     SizedBox(
//                       height: 35,
//                       child: TextButton(
//                         child: DxText(
//                           "View All",
//                           mSize: 18,
//                           textColor: const Color(0xffed2a26),
//                           mBold: true,
//                         ),
//                         onPressed: () {
//                           if (upshomepaid!.viewAll!.isNotEmpty) {
//                             openWebview(
//                                 upshomepaid!.viewAll!, upshomepaid!.title!);
//                           } else if (upshomepaid!.title! ==
//                               "Faculty Suggestions") {
//                             openScreenAsBottomToTop(context,
//                                 FacultySuggestion(upshomepaid!.items!));
//                           } else {
//                             if (upshomepaid!.title == "Suggested Video") {
//                               allDataview = AllProductE.sugestedVideo;
//                             } else if (widget.upshomepaid!.title ==
//                                 "Our Successful Students") {
//                               allDataview = AllProductE.studentReview;
//                             } else if (upshomepaid!.title == "Free Notes") {
//                               allDataview = AllProductE.freeNote;
//                             }

//                             openScreenAsBottomToTop(
//                               context,
//                               ViewAll(upshomepaid!.title!, allDataview),
//                             );
//                           }
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                       itemCount: upshomepaid!.items!.length,
//                       shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) {
//                         return upshomepaid!.title! == "Free Notes"
//                             ? freeNotes(
//                                 upshomepaid!.items![index],
//                               )
//                             : videoContent(
//                                 upshomepaid!.items![index],
//                               );
//                       }),
//                 )
//               ],
//             ),
//           );
//   }

//   Widget videoContent(
//     Items? items,
//   ) {
//     return Card(
//       elevation: 2,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(6),
//             bottomLeft: Radius.circular(6),
//             bottomRight: Radius.circular(6),
//             topRight: Radius.circular(6)),
//       ),
//       margin: const EdgeInsets.only(right: 10, top: 6, bottom: 12),
//       child: Container(
//         height: 130,
//         width: 200,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
//         child: InkWell(
//           onTap: () {
//             if (items.url != null && items.url!.isNotEmpty) {
//               if (items.url!.contains("Bloc") ||
//                   items.url!.contains("Blocked")) {
//                 MethodUtils.showAlertDialog(context, "Blocked",
//                     "You have not passed the previous Self-assessment.");
//               } else {
//                 openWebview(items.url!, items.name!);
//               }
//             } else if (items.videourl != null && items.videourl!.isNotEmpty) {
//               if (items.videourl!.contains("vimeo")) {
//                 String vimeoLink = items.videourl!.split("video/").last;
//                 if (items.attempt > 0) {
//                   videoAttempt(
//                     items.videoId!.toString(),
//                     items.bookingId!.toString(),
//                   );
//                   gotoVimeoPlayerPage(
//                     context,
//                     appBarName: items.name!,
//                     vimeoId: vimeoLink,
//                   ).whenComplete(
//                     () => BlocProvider.of<HomePageCubit>(context)
//                         .getHomePageData(),
//                   );
//                 } else {
//                   Get.defaultDialog(
//                     title: 'Limit Exceeded',
//                     middleText:
//                         'Your limit has exceeded. Please contact admin.',
//                   );
//                 }
//               } else {
//                 controller.gotoYoutubePlayer(
//                   context,
//                   appBarName: items.name!,
//                   videourl: items.videourl!,
//                 );
//               }
//             } else if (items.url == "") {
//               Get.defaultDialog(
//                 title: 'Limit Exceeded',
//                 middleText: 'Your limit has exceeded. Please contact admin.',
//               );
//             }
//           },
//           child: Column(
//             children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(6),
//                   topRight: Radius.circular(6),
//                 ),
//                 child: Container(
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       SizedBox(
//                         width: 200.w,
//                         height: 120,
//                         child: AspectRatio(
//                           aspectRatio: 16 / 9,
//                           child: CachedNetworkImage(
//                             imageUrl: items!.image!,
//                             placeholder: (context, url) => const Center(
//                                 child: CupertinoActivityIndicator()),
//                             errorWidget: (context, url, error) =>
//                                 const Icon(Icons.error),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       // Text(items.url.toString()),
//                       // DxText(items.videourl.toString()),
//                       items.url == null ||
//                               items.url!.contains("video") ||
//                               items.videourl!.contains("video")
//                           ? const Icon(
//                               CupertinoIcons.play_circle,
//                               color: Color(0xff27ae60),
//                               size: 50,
//                             )
//                           : const SizedBox.shrink()
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(4.0),
//                 child: Text(
//                   items.name ?? "",
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
