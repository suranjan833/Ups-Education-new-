import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/country_state_gender_model.dart';

import '../config/config.dart';

class CountryStateGenderController extends GetxController {
  int? state;
  int? country;
  int? gender;
  var countryStateGenderModel = CountryStateGenderModel().obs;
  Future statelistData() async {
    var response = await dioGet("/mobile-master");
    if (response.statusCode == 200) {
      return countryStateGenderModel(
          CountryStateGenderModel.fromJson(response.data));
    }
  }

  @override
  void onInit() {
    statelistData();
    super.onInit();
  }
}
