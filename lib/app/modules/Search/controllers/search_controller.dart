import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/data/model/search_model.dart';

class SearchController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var searchController = TextEditingController();

  var searchModel = SearchModel().obs;

  Future<SearchModel> searchData(String keyword) async {
    var data = {"keyword": keyword};
    var response = await dioPost(data: data, endUrl: ApiUrls.search);
    return searchModel(SearchModel.fromJson(response.data));
  }

  @override
  void refresh() {
    searchModel;
    super.refresh();
  }
}
