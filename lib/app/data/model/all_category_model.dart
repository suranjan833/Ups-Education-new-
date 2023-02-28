// To parse this JSON data, do
//
//     final allCategoryModel = allCategoryModelFromJson(jsonString);

import 'dart:convert';

AllCategoryModel allCategoryModelFromJson(String str) => AllCategoryModel.fromJson(json.decode(str));

String allCategoryModelToJson(AllCategoryModel data) => json.encode(data.toJson());

class AllCategoryModel {
    AllCategoryModel({
        this.data,
        this.status,
        this.message,
    });

    List<Datum>? data;
    int? status;
    String? message;

    factory AllCategoryModel.fromJson(Map<String, dynamic> json) => AllCategoryModel(
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
        this.sn,
        this.id,
        this.name,
        this.child,
    });

    int? sn;
    int? id;
    String? name;
    List<Child>? child;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        sn: json["sn"],
        id: json["id"],
        name: json["name"],
        child: json["child"] == null ? [] : List<Child>.from(json["child"]!.map((x) => Child.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "sn": sn,
        "id": id,
        "name": name,
        "child": child == null ? [] : List<dynamic>.from(child!.map((x) => x.toJson())),
    };
}

class Child {
    Child({
        this.sn,
        this.id,
        this.name,
        this.subchild,
    });

    String? sn;
    int? id;
    String? name;
    List<dynamic>? subchild;

    factory Child.fromJson(Map<String, dynamic> json) => Child(
        sn: json["sn"],
        id: json["id"],
        name: json["name"],
        subchild: json["subchild"] == null ? [] : List<dynamic>.from(json["subchild"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "sn": sn,
        "id": id,
        "name": name,
        "subchild": subchild == null ? [] : List<dynamic>.from(subchild!.map((x) => x)),
    };
}
