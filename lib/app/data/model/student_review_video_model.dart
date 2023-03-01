// To parse this JSON data, do
//
//     final studentReviewVideoModel = studentReviewVideoModelFromJson(jsonString);

import 'dart:convert';

StudentReviewVideoModel studentReviewVideoModelFromJson(String str) => StudentReviewVideoModel.fromJson(json.decode(str));

String studentReviewVideoModelToJson(StudentReviewVideoModel data) => json.encode(data.toJson());

class StudentReviewVideoModel {
    StudentReviewVideoModel({
        this.data,
        this.status,
        this.message,
    });

    List<Datum>? data;
    int? status;
    String? message;

    factory StudentReviewVideoModel.fromJson(Map<String, dynamic> json) => StudentReviewVideoModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "status": status,
        "message": message,
    };
}

class Datum {
    Datum({
        this.name,
        this.videourl,
        this.image,
    });

    String? name;
    String? videourl;
    String? image;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        videourl: json["videourl"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "videourl": videourl,
        "image": image,
    };
}
