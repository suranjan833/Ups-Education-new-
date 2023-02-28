import 'package:get/get.dart';

import '../models/suggested_video_model.dart';

class SuggestedVideoProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return SuggestedVideo.fromJson(map);
      if (map is List) {
        return map.map((item) => SuggestedVideo.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<SuggestedVideo?> getSuggestedVideo(int id) async {
    final response = await get('suggestedvideo/$id');
    return response.body;
  }

  Future<Response<SuggestedVideo>> postSuggestedVideo(
          SuggestedVideo suggestedvideo) async =>
      await post('suggestedvideo', suggestedvideo);
  Future<Response> deleteSuggestedVideo(int id) async =>
      await delete('suggestedvideo/$id');
}
