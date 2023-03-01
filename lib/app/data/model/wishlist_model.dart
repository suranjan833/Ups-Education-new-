// To parse this JSON data, do
//
//     final wishlistModel = wishlistModelFromJson(jsonString);

import 'dart:convert';

WishlistModel wishlistModelFromJson(String str) => WishlistModel.fromJson(json.decode(str));

String wishlistModelToJson(WishlistModel data) => json.encode(data.toJson());

class WishlistModel {
    WishlistModel({
        this.data,
        this.status,
        this.message,
    });

    Data? data;
    int? status;
    String? message;

    factory WishlistModel.fromJson(Map<String, dynamic> json) => WishlistModel(
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
        this.id,
        this.coursebookmarkingid,
        this.name,
        this.linkname,
        this.coursetype,
        this.instructorname,
        this.image,
        this.mrpprice,
        this.price,
        this.appprice,
        this.discount,
    });

    int? id;
    int? coursebookmarkingid;
    String? name;
    String? linkname;
    String? coursetype;
    String? instructorname;
    String? image;
    String? mrpprice;
    String? price;
    String? appprice;
    dynamic discount;

    factory Coursedatum.fromJson(Map<String, dynamic> json) => Coursedatum(
        id: json["id"],
        coursebookmarkingid: json["coursebookmarkingid"],
        name: json["name"],
        linkname: json["linkname"],
        coursetype: json["coursetype"],
        instructorname: json["instructorname"],
        image: json["image"],
        mrpprice: json["mrpprice"],
        price: json["price"],
        appprice: json["appprice"],
        discount: json["discount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "coursebookmarkingid": coursebookmarkingid,
        "name": name,
        "linkname": linkname,
        "coursetype": coursetype,
        "instructorname": instructorname,
        "image": image,
        "mrpprice": mrpprice,
        "price": price,
        "appprice": appprice,
        "discount": discount,
    };
}
