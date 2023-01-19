import 'package:metadata_fetch/metadata_fetch.dart';

class Update {
  int id = 0;
  String? description = "";
  String? image = "";
  String? url = "";
  String? videourl = "";
  String? name = "";
  String? date = "";
  int? postId;
  int? totalLikes;
  int? userLiked;
  int maxline = 2;
  int maxline1 = 10;
  bool isLoading = false;
  bool readStatus = false;
  Metadata? metadata;
  int sortIndex = 0;

  Update({
    required this.id,
    this.description = "",
    required this.image,
    required this.url,
    this.date,
    this.readStatus = false,
    this.name = "",
    required this.videourl,
    this.maxline1 = 10,
    this.maxline = 2,
    required this.isLoading,
    this.postId,
    this.sortIndex = 0,
  });

  Update.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'] ?? "";
    image = json['image'];
    url = json['url'];
    readStatus = json.containsKey("readStatus") ? json["readStatus"] : false;
    postId = json['id'];
    totalLikes = json['totallike'];
    date = json['date'] ?? "";
    name = json['name'] ?? "";
    userLiked = json['userlike'];
    videourl = json['videourl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['image'] = image;
    data['url'] = url;
    data['userlike'] = userLiked;
    data['totallike'] = totalLikes;
    data['readStatus'] = readStatus;
    data['id'] = postId;
    data['date'] = date;
    data['name'] = name;
    data['videourl'] = videourl;
    return data;
  }
}

class LikesModel {
  int? totallike;
  int? userlike;
  int? status;
  String? message;

  LikesModel(
      {required this.totallike,
      required this.userlike,
      this.status,
      this.message});

  LikesModel.fromJson(Map<String, dynamic> json) {
    totallike = json['totallike'];
    userlike = json['userlike'];
    status = json['status'];
    message = json['message'];
  }
}
