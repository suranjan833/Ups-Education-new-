// To parse this JSON data, do
//
//     final liveModel = liveModelFromJson(jsonString);

import 'dart:convert';

LiveModel liveModelFromJson(String str) => LiveModel.fromJson(json.decode(str));

String liveModelToJson(LiveModel data) => json.encode(data.toJson());

class LiveModel {
    LiveModel({
        this.data,
        this.status,
        this.message,
    });

    List<Datum>? data;
    int? status;
    String? message;

    factory LiveModel.fromJson(Map<String, dynamic> json) => LiveModel(
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
        this.liveurl,
        this.description,
        this.image,
    });

    String? name;
    String? liveurl;
    String? description;
    String? image;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        liveurl: json["liveurl"],
        description: json["description"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "liveurl": liveurl,
        "description": description,
        "image": image,
    };
}
