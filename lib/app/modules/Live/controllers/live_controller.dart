import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/live_model.dart';

class LiveController extends GetxController {
  var liveModel = LiveModel().obs;

  @override
  void onInit() {
    liveVideoData();
    super.onInit();
  }

  Future liveVideoData() async {
    var response =
        await dioGet("/appliveclasses?user_id=${getBox.read(USER_ID)}");

    if (response.statusCode == 200) {
      return liveModel(LiveModel.fromJson(response.data));
    }
  }
}
