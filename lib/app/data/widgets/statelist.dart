
// import 'package:flutter/material.dart';
// import 'package:ups_education/app/data/config/config.dart';
// import 'package:ups_education/app/data/controller/country_state_gender_controller.dart';
// import 'package:ups_education/app/modules/Signup/controllers/signup_controller.dart';

// class StateListList extends StatelessWidget {
//   String? currentValue;
//   StateListList({this.currentValue, Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     var controller = Get.put(SignupController());
//     return Obx(
//       () => controller.countryStateGenderModel.value.data?.state != null
//           ? Container(
//               margin: EdgeInsets.only(bottom: 25.h),
//               child: DropdownButtonHideUnderline(
//                 child: DropdownButtonFormField<String>(
//                   isExpanded: true,
//                   decoration: InputDecoration(
//                       border: UnderlineInputBorder(
//                           borderSide: BorderSide(color: AppColor.grey))),
//                   dropdownColor: AppColor.white,
//                   value: currentValue ??
//                        controller.countryStateGenderModel.value.data?.state![0].name
//                           .toString(),
//                   items:  controller.countryStateGenderModel.value.data?.state!
//                       .map<DropdownMenuItem<String>>((value) {
//                     return DropdownMenuItem<String>(
//                       enabled: true,
//                       alignment: Alignment.centerLeft,
//                       value: value.name.toString(),
//                       child: Text(
//                         value.name.toString(),
//                         style: TextStyle(
//                             fontSize: 17.w, fontWeight: FontWeight.w400),
//                       ),
//                     );
//                   }).toList(),
//                   onChanged: (String? newValue) {
//                     var data =  controller.countryStateGenderModel.value.data?.state!
//                         .where((element) => element.name == newValue)
//                         .toList();
//                     controller.state = data!.first.id;
//                   },
//                 ),
//               ),
//             )
//           : const Center(child: CircularProgressIndicator()),
//     );
//   }
// }
