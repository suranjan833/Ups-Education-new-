import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchController());
    return Scaffold(
        key: controller.scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
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
          title: TextFormField(
            textInputAction: TextInputAction.done,
            autofocus: true,
            controller: controller.searchController,
            onChanged: (value) {
              controller.searchData(value);
            },
          ),
        ),
        body: Obx(
          () => controller.searchModel.value.data?.coursedata != null
              ? lay()
              : const Center(
                  child: Text("Not Found result"),
                ),
        ));
  }

  Widget lay() {
    return controller.searchModel.value.data!.coursedata!.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: controller.searchModel.value.data!.coursedata!.length,
            itemBuilder: (BuildContext context, int i) {
              var data = controller.searchModel.value.data!.coursedata![i];
              return ListTile(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WebviewPage(
                  //               isFullPage: true,
                  //               url: searchModel[i].linkname!,
                  //               appBarName: searchModel[i].name!,
                  //             ))).whenComplete(() => Navigator.pop(context));
                },
                leading: SizedBox(
                    height: 50,
                    width: 50,
                    // ignore: sort_child_properties_last
                    child: Image.network(data.image.toString())),
                title: Text(data.name.toString()),
                subtitle: Text(data.price.toString()),
                trailing: Text(data.instructorname.toString()),
              );
            })
        : const Center(
            child: Text("No Result Found!"),
          );
  }
}
