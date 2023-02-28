// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'dart:convert';

SearchModel searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
    SearchModel({
        this.data,
        this.status,
        this.message,
    });

    Data? data;
    int? status;
    String? message;

    factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "status": status,
        "message": message,
    };
}

class Data {
    Data({
        this.coursedata,
    });

    List<Coursedatum>? coursedata;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        coursedata: json["coursedata"] == null ? [] : List<Coursedatum>.from(json["coursedata"]!.map((x) => Coursedatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "coursedata": coursedata == null ? [] : List<dynamic>.from(coursedata!.map((x) => x.toJson())),
    };
}

class Coursedatum {
    Coursedatum({
        this.name,
        this.coursetype,
        this.totalreviews,
        this.linkname,
        this.instructorname,
        this.image,
        this.mrpprice,
        this.gst,
        this.price,
        this.appprice,
        this.discount,
    });

    String? name;
    String? coursetype;
    int? totalreviews;
    String? linkname;
    String? instructorname;
    String? image;
    String? mrpprice;
    int? gst;
    String? price;
    String? appprice;
    int? discount;

    factory Coursedatum.fromJson(Map<String, dynamic> json) => Coursedatum(
        name: json["name"],
        coursetype: json["coursetype"],
        totalreviews: json["totalreviews"],
        linkname: json["linkname"],
        instructorname: json["instructorname"],
        image: json["image"],
        mrpprice: json["mrpprice"],
        gst: json["gst"],
        price: json["price"],
        appprice: json["appprice"],
        discount: json["discount"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "coursetype": coursetype,
        "totalreviews": totalreviews,
        "linkname": linkname,
        "instructorname": instructorname,
        "image": image,
        "mrpprice": mrpprice,
        "gst": gst,
        "price": price,
        "appprice": appprice,
        "discount": discount,
    };
}
