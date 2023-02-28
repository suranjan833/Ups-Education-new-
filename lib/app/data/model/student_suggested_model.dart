// To parse this JSON data, do
//
//     final studentSuggestedModel = studentSuggestedModelFromJson(jsonString);

import 'dart:convert';

StudentSuggestedModel studentSuggestedModelFromJson(String str) => StudentSuggestedModel.fromJson(json.decode(str));

String studentSuggestedModelToJson(StudentSuggestedModel data) => json.encode(data.toJson());

class StudentSuggestedModel {
    StudentSuggestedModel({
        this.data,
        this.status,
        this.message,
    });

    List<Datum>? data;
    int? status;
    String? message;

    factory StudentSuggestedModel.fromJson(Map<String, dynamic> json) => StudentSuggestedModel(
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
