class SuggestedVideo {
  List<Data>? data;
  int? status;
  String? message;

  SuggestedVideo({this.data, this.status, this.message});

  SuggestedVideo.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    // if (data != null) {
    data['data'] = this.data;
    // }
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class Data {
  String? name;
  String? videourl;
  String? image;

  Data({this.name, this.videourl, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    videourl = json['videourl'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['videourl'] = videourl;
    data['image'] = image;
    return data;
  }
}
