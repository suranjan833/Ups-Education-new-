// To parse this JSON data, do
//
//     final myAccountModel = myAccountModelFromJson(jsonString);

import 'dart:convert';

MyAccountModel myAccountModelFromJson(String str) => MyAccountModel.fromJson(json.decode(str));

String myAccountModelToJson(MyAccountModel data) => json.encode(data.toJson());

class MyAccountModel {
    MyAccountModel({
        this.data,
        this.status,
        this.message,
    });

    Data? data;
    int? status;
    String? message;

    factory MyAccountModel.fromJson(Map<String, dynamic> json) => MyAccountModel(
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
        this.totalcourse,
        this.totalwishlistcourses,
        this.totalfreecourses,
        this.userdata,
    });

    Total? totalcourse;
    Total? totalwishlistcourses;
    Total? totalfreecourses;
    Userdata? userdata;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalcourse: json["totalcourse"] == null ? null : Total.fromJson(json["totalcourse"]),
        totalwishlistcourses: json["totalwishlistcourses"] == null ? null : Total.fromJson(json["totalwishlistcourses"]),
        totalfreecourses: json["totalfreecourses"] == null ? null : Total.fromJson(json["totalfreecourses"]),
        userdata: json["userdata"] == null ? null : Userdata.fromJson(json["userdata"]),
    );

    Map<String, dynamic> toJson() => {
        "totalcourse": totalcourse?.toJson(),
        "totalwishlistcourses": totalwishlistcourses?.toJson(),
        "totalfreecourses": totalfreecourses?.toJson(),
        "userdata": userdata?.toJson(),
    };
}

class Total {
    Total({
        this.icon,
        this.link,
        this.title,
        this.totalcount,
    });

    String? icon;
    String? link;
    String? title;
    int? totalcount;

    factory Total.fromJson(Map<String, dynamic> json) => Total(
        icon: json["icon"],
        link: json["link"],
        title: json["title"],
        totalcount: json["totalcount"],
    );

    Map<String, dynamic> toJson() => {
        "icon": icon,
        "link": link,
        "title": title,
        "totalcount": totalcount,
    };
}

class Userdata {
    Userdata({
        this.userid,
        this.firstname,
        this.lastname,
        this.email,
        this.mobile,
        this.city,
        this.address,
        this.gender,
        this.image,
        this.pincode,
        this.countryId,
        this.stateId,
        this.state,
        this.dyear,
        this.dmonth,
        this.dday,
    });

    int? userid;
    String? firstname;
    String? lastname;
    String? email;
    String? mobile;
    String? city;
    String? address;
    String? gender;
    String? image;
    String? pincode;
    int? countryId;
    int? stateId;
    String? state;
    String? dyear;
    String? dmonth;
    String? dday;

    factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
        userid: json["userid"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        mobile: json["mobile"],
        city: json["city"],
        address: json["address"],
        gender: json["gender"],
        image: json["image"],
        pincode: json["pincode"],
        countryId: json["country_id"],
        stateId: json["state_id"],
        state: json["state"],
        dyear: json["dyear"],
        dmonth: json["dmonth"],
        dday: json["dday"],
    );

    Map<String, dynamic> toJson() => {
        "userid": userid,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "mobile": mobile,
        "city": city,
        "address": address,
        "gender": gender,
        "image": image,
        "pincode": pincode,
        "country_id": countryId,
        "state_id": stateId,
        "state": state,
        "dyear": dyear,
        "dmonth": dmonth,
        "dday": dday,
    };
}
