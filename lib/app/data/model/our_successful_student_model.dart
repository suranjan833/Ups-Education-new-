// To parse this JSON data, do
//
//     final ourSuccessfulStudentModel = ourSuccessfulStudentModelFromJson(jsonString);

import 'dart:convert';

OurSuccessfulStudentModel ourSuccessfulStudentModelFromJson(String str) => OurSuccessfulStudentModel.fromJson(json.decode(str));

String ourSuccessfulStudentModelToJson(OurSuccessfulStudentModel data) => json.encode(data.toJson());

class OurSuccessfulStudentModel {
    OurSuccessfulStudentModel({
        this.data,
        this.status,
        this.message,
    });

    List<Datum>? data;
    int? status;
    String? message;

    factory OurSuccessfulStudentModel.fromJson(Map<String, dynamic> json) => OurSuccessfulStudentModel(
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
        this.coursename,
        this.description,
        this.image,
    });

    String? name;
    String? coursename;
    String? description;
    String? image;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        coursename: json["coursename"],
        description: json["description"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "coursename": coursename,
        "description": description,
        "image": image,
    };
}
