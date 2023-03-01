// To parse this JSON data, do
//
//     final categoryWiseCourseModel = categoryWiseCourseModelFromJson(jsonString);

import 'dart:convert';

CategoryWiseCourseModel categoryWiseCourseModelFromJson(String str) => CategoryWiseCourseModel.fromJson(json.decode(str));

String categoryWiseCourseModelToJson(CategoryWiseCourseModel data) => json.encode(data.toJson());

class CategoryWiseCourseModel {
    CategoryWiseCourseModel({
        this.data,
        this.status,
        this.message,
    });

    Data? data;
    int? status;
    String? message;

    factory CategoryWiseCourseModel.fromJson(Map<String, dynamic> json) => CategoryWiseCourseModel(
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
        this.totalreviews,
    });

    List<Coursedatum>? coursedata;
    dynamic totalreviews;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        coursedata: json["coursedata"] == null ? [] : List<Coursedatum>.from(json["coursedata"]!.map((x) => Coursedatum.fromJson(x))),
        totalreviews: json["totalreviews"],
    );

    Map<String, dynamic> toJson() => {
        "coursedata": coursedata == null ? [] : List<dynamic>.from(coursedata!.map((x) => x.toJson())),
        "totalreviews": totalreviews,
    };
}

class Coursedatum {
    Coursedatum({
        this.name,
        this.coursetype,
        this.totalreviews,
        this.ttlstudentsenrolled,
        this.linkname,
        this.instructorname,
        this.image,
        this.mrpprice,
        this.gst,
        this.price,
        this.discount,
    });

    String? name;
    String? coursetype;
    int? totalreviews;
    int? ttlstudentsenrolled;
    String? linkname;
    String? instructorname;
    String? image;
    String? mrpprice;
    int? gst;
    int? price;
    dynamic discount;

    factory Coursedatum.fromJson(Map<String, dynamic> json) => Coursedatum(
        name: json["name"],
        coursetype: json["coursetype"],
        totalreviews: json["totalreviews"],
        ttlstudentsenrolled: json["ttlstudentsenrolled"],
        linkname: json["linkname"],
        instructorname: json["instructorname"],
        image: json["image"],
        mrpprice: json["mrpprice"],
        gst: json["gst"],
        price: json["price"],
        discount: json["discount"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "coursetype": coursetype,
        "totalreviews": totalreviews,
        "ttlstudentsenrolled": ttlstudentsenrolled,
        "linkname": linkname,
        "instructorname": instructorname,
        "image": image,
        "mrpprice": mrpprice,
        "gst": gst,
        "price": price,
        "discount": discount,
    };
}
