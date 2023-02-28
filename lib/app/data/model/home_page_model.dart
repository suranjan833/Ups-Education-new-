// ignore: file_names

import 'dart:convert';

HomePageModel homePageModelFromJson(String str) =>
    HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
  HomePageModel({
    this.data,
    this.status,
    this.message,
  });

  Data? data;
  int? status;
  String? message;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
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
    this.sidebarmenu,
    this.ttlcartproduct,
    this.testing,
    this.homelink,
    this.loginlink,
    this.cartlink,
    this.wishlistlink,
    this.facebooklink,
    this.linkedinlink,
    this.twitterlink,
    this.instagramlink,
    this.cartdata,
    this.userid,
    this.firstname,
    this.lastname,
    this.email,
    this.belowbannerlinks,
    this.ttlfeaturedcourses,
    this.upshomepaid,
    this.upshomelist,
    this.allbanner,
    this.allupdate,
    this.upsstudentsay,
    this.freenotes,
    this.courseios,
  });

  List<Sidebarmenu>? sidebarmenu;
  int? ttlcartproduct;
  String? testing;
  String? homelink;
  String? loginlink;
  String? cartlink;
  String? wishlistlink;
  String? facebooklink;
  String? linkedinlink;
  String? twitterlink;
  String? instagramlink;
  List<dynamic>? cartdata;
  int? userid;
  String? firstname;
  String? lastname;
  String? email;
  List<Allbanner>? belowbannerlinks;
  int? ttlfeaturedcourses;
  List<dynamic>? upshomepaid;
  List<Upshomelist>? upshomelist;
  List<Allbanner>? allbanner;
  DataAllupdate? allupdate;
  Freenotes? upsstudentsay;
  Freenotes? freenotes;
  Courseios? courseios;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        sidebarmenu: json["sidebarmenu"] == null
            ? []
            : List<Sidebarmenu>.from(
                json["sidebarmenu"]!.map((x) => Sidebarmenu.fromJson(x))),
        ttlcartproduct: json["ttlcartproduct"],
        testing: json["testing"],
        homelink: json["homelink"],
        loginlink: json["loginlink"],
        cartlink: json["cartlink"],
        wishlistlink: json["wishlistlink"],
        facebooklink: json["facebooklink"],
        linkedinlink: json["linkedinlink"],
        twitterlink: json["twitterlink"],
        instagramlink: json["instagramlink"],
        cartdata: json["cartdata"] == null
            ? []
            : List<dynamic>.from(json["cartdata"]!.map((x) => x)),
        userid: json["userid"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        belowbannerlinks: json["belowbannerlinks"] == null
            ? []
            : List<Allbanner>.from(
                json["belowbannerlinks"]!.map((x) => Allbanner.fromJson(x))),
        ttlfeaturedcourses: json["ttlfeaturedcourses"],
        upshomepaid: json["upshomepaid"] == null
            ? []
            : List<dynamic>.from(json["upshomepaid"]!.map((x) => x)),
        upshomelist: json["upshomelist"] == null
            ? []
            : List<Upshomelist>.from(
                json["upshomelist"]!.map((x) => Upshomelist.fromJson(x))),
        allbanner: json["allbanner"] == null
            ? []
            : List<Allbanner>.from(
                json["allbanner"]!.map((x) => Allbanner.fromJson(x))),
        allupdate: json["allupdate"] == null
            ? null
            : DataAllupdate.fromJson(json["allupdate"]),
        upsstudentsay: json["upsstudentsay"] == null
            ? null
            : Freenotes.fromJson(json["upsstudentsay"]),
        freenotes: json["freenotes"] == null
            ? null
            : Freenotes.fromJson(json["freenotes"]),
        courseios: json["courseios"] == null
            ? null
            : Courseios.fromJson(json["courseios"]),
      );

  Map<String, dynamic> toJson() => {
        "sidebarmenu": sidebarmenu == null
            ? []
            : List<dynamic>.from(sidebarmenu!.map((x) => x.toJson())),
        "ttlcartproduct": ttlcartproduct,
        "testing": testing,
        "homelink": homelink,
        "loginlink": loginlink,
        "cartlink": cartlink,
        "wishlistlink": wishlistlink,
        "facebooklink": facebooklink,
        "linkedinlink": linkedinlink,
        "twitterlink": twitterlink,
        "instagramlink": instagramlink,
        "cartdata":
            cartdata == null ? [] : List<dynamic>.from(cartdata!.map((x) => x)),
        "userid": userid,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "belowbannerlinks": belowbannerlinks == null
            ? []
            : List<dynamic>.from(belowbannerlinks!.map((x) => x.toJson())),
        "ttlfeaturedcourses": ttlfeaturedcourses,
        "upshomepaid": upshomepaid == null
            ? []
            : List<dynamic>.from(upshomepaid!.map((x) => x)),
        "upshomelist": upshomelist == null
            ? []
            : List<dynamic>.from(upshomelist!.map((x) => x.toJson())),
        "allbanner": allbanner == null
            ? []
            : List<dynamic>.from(allbanner!.map((x) => x.toJson())),
        "allupdate": allupdate?.toJson(),
        "upsstudentsay": upsstudentsay?.toJson(),
        "freenotes": freenotes?.toJson(),
        "courseios": courseios?.toJson(),
      };
}

class Allbanner {
  Allbanner({
    this.name,
    this.link,
    this.image,
    this.type,
    this.filtertag,
  });

  String? name;
  String? link;
  String? image;
  String? type;
  String? filtertag;

  factory Allbanner.fromJson(Map<String, dynamic> json) => Allbanner(
        name: json["name"],
        link: json["link"],
        image: json["image"],
        type: json["type"],
        filtertag: json["filtertag"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "link": link,
        "image": image,
        "type": type,
        "filtertag": filtertag,
      };
}

class DataAllupdate {
  DataAllupdate({
    this.title,
    this.allupdates,
  });

  String? title;
  List<AllupdateElement>? allupdates;

  factory DataAllupdate.fromJson(Map<String, dynamic> json) => DataAllupdate(
        title: json["title"],
        allupdates: json["allupdates"] == null
            ? []
            : List<AllupdateElement>.from(
                json["allupdates"]!.map((x) => AllupdateElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "allupdates": allupdates == null
            ? []
            : List<dynamic>.from(allupdates!.map((x) => x.toJson())),
      };
}

class AllupdateElement {
  AllupdateElement({
    this.id,
    this.name,
    this.totallike,
    this.description,
    this.userlike,
    this.image,
    this.url,
    this.videourl,
  });

  int? id;
  String? name;
  int? totallike;
  String? description;
  int? userlike;
  String? image;
  String? url;
  String? videourl;

  factory AllupdateElement.fromJson(Map<String, dynamic> json) =>
      AllupdateElement(
        id: json["id"],
        name: json["name"],
        totallike: json["totallike"],
        description: json["description"],
        userlike: json["userlike"],
        image: json["image"],
        url: json["url"],
        videourl: json["videourl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "totallike": totallike,
        "description": description,
        "userlike": userlike,
        "image": image,
        "url": url,
        "videourl": videourl,
      };
}

class Courseios {
  Courseios({
    this.title,
    this.items,
  });

  String? title;
  List<CourseiosItem>? items;

  factory Courseios.fromJson(Map<String, dynamic> json) => Courseios(
        title: json["title"],
        items: json["items"] == null
            ? []
            : List<CourseiosItem>.from(
                json["items"]!.map((x) => CourseiosItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class CourseiosItem {
  CourseiosItem({
    this.id,
    this.name,
    this.iosproductid,
  });

  int? id;
  String? name;
  String? iosproductid;

  factory CourseiosItem.fromJson(Map<String, dynamic> json) => CourseiosItem(
        id: json["id"],
        name: json["name"],
        iosproductid: json["iosproductid"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "iosproductid": iosproductid,
      };
}

class Freenotes {
  Freenotes({
    this.title,
    this.items,
  });

  String? title;
  List<FreenotesItem>? items;

  factory Freenotes.fromJson(Map<String, dynamic> json) => Freenotes(
        title: json["title"],
        items: json["items"] == null
            ? []
            : List<FreenotesItem>.from(
                json["items"]!.map((x) => FreenotesItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class FreenotesItem {
  FreenotesItem({
    this.name,
    this.description,
    this.image,
    this.pdf,
    this.coursename,
  });

  String? name;
  String? description;
  String? image;
  String? pdf;
  String? coursename;

  factory FreenotesItem.fromJson(Map<String, dynamic> json) => FreenotesItem(
        name: json["name"],
        description: json["description"],
        image: json["image"],
        pdf: json["pdf"],
        coursename: json["coursename"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "image": image,
        "pdf": pdf,
        "coursename": coursename,
      };
}

class Sidebarmenu {
  Sidebarmenu({
    this.link,
    this.name,
    this.subdata,
  });

  String? link;
  String? name;
  List<Sidebarmenu>? subdata;

  factory Sidebarmenu.fromJson(Map<String, dynamic> json) => Sidebarmenu(
        link: json["link"],
        name: json["name"],
        subdata: json["subdata"] == null
            ? []
            : List<Sidebarmenu>.from(
                json["subdata"]!.map((x) => Sidebarmenu.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "name": name,
        "subdata": subdata == null
            ? []
            : List<dynamic>.from(subdata!.map((x) => x.toJson())),
      };
}

class Upshomelist {
  Upshomelist({
    this.title,
    this.items,
    this.viewalllink,
    this.type,
  });

  String? title;
  List<UpshomelistItem>? items;
  String? viewalllink;
  String? type;

  factory Upshomelist.fromJson(Map<String, dynamic> json) => Upshomelist(
        title: json["title"],
        items: json["items"] == null
            ? []
            : List<UpshomelistItem>.from(
                json["items"]!.map((x) => UpshomelistItem.fromJson(x))),
        viewalllink: json["viewalllink"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "viewalllink": viewalllink,
        "type": type,
      };
}

class UpshomelistItem {
  UpshomelistItem({
    this.name,
    this.videourl,
    this.image,
    this.coursetype,
    this.totalreviews,
    this.url,
    this.instructorname,
    this.mrpprice,
    this.gst,
    this.price,
    this.appprice,
    this.discount,
    this.description,
    this.pdf,
    this.time,
    this.totalquestion,
    this.date,
  });

  String? name;
  String? videourl;
  String? image;
  String? coursetype;
  int? totalreviews;
  String? url;
  String? instructorname;
  String? mrpprice;
  int? gst;
  String? price;
  String? appprice;
  dynamic discount;
  String? description;
  String? pdf;
  int? time;
  int? totalquestion;
  String? date;

  factory UpshomelistItem.fromJson(Map<String, dynamic> json) =>
      UpshomelistItem(
        name: json["name"],
        videourl: json["videourl"],
        image: json["image"],
        coursetype: json["coursetype"],
        totalreviews: json["totalreviews"],
        url: json["url"],
        instructorname: json["instructorname"],
        mrpprice: json["mrpprice"],
        gst: json["gst"],
        price: json["price"],
        appprice: json["appprice"],
        discount: json["discount"],
        description: json["description"],
        pdf: json["pdf"],
        time: json["time"],
        totalquestion: json["totalquestion"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "videourl": videourl,
        "image": image,
        "coursetype": coursetype,
        "totalreviews": totalreviews,
        "url": url,
        "instructorname": instructorname,
        "mrpprice": mrpprice,
        "gst": gst,
        "price": price,
        "appprice": appprice,
        "discount": discount,
        "description": description,
        "pdf": pdf,
        "time": time,
        "totalquestion": totalquestion,
        "date": date,
      };
}



// class HomePageModel {
//   List<Sidebarmenu> sidebarMenus = List.empty(growable: true);
//   bool? testing = false;
//   String? homelink = "";
//   String? loginlink = "";
//   String? message = "";
//   String? fbLink = "";
//   String? twitterLink = "";
//   String? instagramLink = "";
//   String? linkedInLink = "";
//   String? cartlink = "";
//   String? wishlistlink = "";
//   List<BannerModel>? allbanner = [];
//   List<Belowbannerlinks>? belowbannerlinks = [];
//   List<Upshomepaid>? upshomepaid = [];
//   List<Upshomepaid>? upshomelist = [];
//   AllUpdate? allupdate;
//   Upshomepaid? freeNotes;
//   Upsstudentsay? upsstudentsay;
//   List<IosProduct> iosProducts = [];

//   HomePageModel({
//     required this.sidebarMenus,
//     this.testing,
//     this.homelink,
//     this.loginlink,
//     this.cartlink,
//     this.wishlistlink,
//     this.allbanner,
//     this.allupdate,
//     this.twitterLink,
//     this.fbLink,
//     this.instagramLink,
//     this.linkedInLink,
//     this.belowbannerlinks,
//     this.upshomepaid,
//     this.upshomelist,
//     this.freeNotes,
//     this.upsstudentsay,
//     this.iosProducts = const [],
//   });

//   HomePageModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];

//     if (json["data"]['sidebarmenu'] != null) {
//       sidebarMenus.clear();
//       json["data"]['sidebarmenu'].forEach((v) {
//         sidebarMenus.add(Sidebarmenu.fromJson(v));
//       });
//     }
//     testing = json["data"]['testing'] == "N";
//     homelink = json["data"]['homelink'];
//     twitterLink = json["data"]['twitterlink'];
//     fbLink = json["data"]['facebooklink'];
//     linkedInLink = json["data"]['linkedinlink'];
//     instagramLink = json["data"]['instagramlink'];
//     loginlink = json["data"]['loginlink'];
//     cartlink = json["data"]['cartlink'];
//     wishlistlink = json["data"]['wishlistlink'];
//     if (json["data"]['allbanner'] != null) {
//       allbanner!.clear();
//       json["data"]['allbanner'].forEach((v) {
//         allbanner!.add(BannerModel.fromJson(v));
//       });
//     }
//     if (json["data"]['belowbannerlinks'] != null) {
//       belowbannerlinks!.clear();
//       json["data"]['belowbannerlinks'].forEach((v) {
//         belowbannerlinks!.add(Belowbannerlinks.fromJson(v));
//       });
//     }
//     if (json["data"]['upshomepaid'] != null) {
//       upshomepaid!.clear();
//       json["data"]['upshomepaid'].forEach((v) {
//         upshomepaid!.add(Upshomepaid.fromJson(v));
//       });
//     }
//     if (json["data"]['upshomelist'] != null) {
//       upshomelist!.clear();
//       json["data"]['upshomelist'].forEach((v) {
//         upshomelist!.add(Upshomepaid.fromJson(v));
//       });
//     }
//     allupdate = json["data"]['allupdate'] != null
//         ? AllUpdate.fromJson(json["data"]['allupdate'])
//         : null;
//     // allupdate = null;

//     freeNotes = json["data"]['freenotes'] != null
//         ? Upshomepaid.fromJson(json["data"]['freenotes'])
//         : null;

//     upsstudentsay = json["data"]['upsstudentsay'] != null
//         ? Upsstudentsay.fromJson(json["data"]['upsstudentsay'])
//         : null;

//     if (json["data"]['courseios'] != null) {
//       List<dynamic> items = json["data"]['courseios']['items'] as List<dynamic>;
//       iosProducts = List.generate(
//           items.length, (index) => IosProduct.fromJson(items[index]));
//     }
//   }
// }

// class Sidebarmenu {
//   String? link = "";
//   String name = "";
//   List<SideBarSubDAta>? subdata = [];

//   Sidebarmenu({this.link, required this.name, this.subdata});

//   Sidebarmenu.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     name = json['name'];
//     if (json['subdata'] != null) {
//       subdata!.clear();
//       json['subdata'].forEach((v) {
//         subdata!.add(SideBarSubDAta.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['link'] = link;
//     data['name'] = name;
//     if (subdata != null) {
//       data['subdata'] = subdata!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class SideBarSubDAta {
//   String? link = "";
//   String name = "";
//   String image = "";

//   SideBarSubDAta({this.link, required this.name, this.image = ""});

//   SideBarSubDAta.fromJson(Map<String, dynamic> json) {
//     link = json['link'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['link'] = link;
//     data['name'] = name;

//     return data;
//   }
// }

// class BannerModel {
//   String? name = "";
//   String? link = "";
//   String image = "";
//   String? type = "";

//   BannerModel({this.name, this.link, required this.image, this.type});

//   BannerModel.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     link = json['link'] ?? "";
//     image = json['image'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['link'] = link;
//     data['image'] = image;
//     data['type'] = type;
//     return data;
//   }
// }

// class Belowbannerlinks {
//   String name = "";
//   String? link = "";
//   String image = "";
//   String? filtertag = "";

//   Belowbannerlinks(
//       {required this.name, this.link, required this.image, this.filtertag});

//   Belowbannerlinks.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     link = json['link'];
//     image = json['image'];
//     filtertag = json['filtertag'];
//   }
// }

// class Upshomepaid {
//   String? type = "";
//   String? title = "";
//   String? viewAll = "";
//   List<Items>? items = [];

//   Upshomepaid({this.type, this.title, this.items, this.viewAll});

//   Upshomepaid.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     title = json['title'];
//     viewAll = json['viewalllink'] ?? "";
//     if (json['items'] != null) {
//       items!.clear();
//       json['items'].forEach((v) {
//         // print("${json['type']}  ---  ${v.toString()}");
//         items!.add(Items.fromJson(v));
//       });
//       // items = items!.reversed.toList();
//     }
//   }
// }

// class Items {
//   String? name = "";
//   String? videourl;
//   String? image = "";
//   int maxline = 2;
//   String? coursetype = "";
//   String? totalreviews = "";
//   String? linkname = "";
//   String? instructorname = "";
//   String? mrpprice = "";
//   int? gst = 0;
//   int attempt = 0;
//   String? price = "";
//   int? discount = 0;
//   String? description = "";
//   String? pdf = "";
//   int? id = 0;
//   int? videoId = 0;
//   int? bookingId = 0;
//   String? coursename = "";
//   String? url = "";
//   String? date;
//   int? time;
//   int? totalQuestion;
//   Metadata? metadata;
//   String? liveurl;

//   Items(
//       {this.name,
//       this.videourl,
//       this.image,
//       this.liveurl,
//       this.maxline = 2,
//       this.metadata,
//       this.videoId,
//       this.bookingId,
//       this.attempt = 0,
//       this.coursename,
//       this.coursetype,
//       this.date,
//       this.time,
//       this.totalQuestion,
//       this.totalreviews,
//       this.linkname,
//       this.instructorname,
//       this.mrpprice,
//       this.gst,
//       this.price,
//       this.discount,
//       this.description,
//       this.pdf,
//       this.id,
//       this.url});

//   Items.fromJson(Map<String, dynamic> json) {
//     name = json['name'] ?? "";
//     liveurl = json['liveurl'] ?? "";
//     videoId = json['video_id'] ?? 0;
//     bookingId = json['booking_id'] ?? 0;
//     videourl = json['videourl'] ?? "";
//     image = json['image'];
//     coursetype = json['coursetype'];
//     totalreviews =
//         json['totalreviews'] == null ? "0" : json['totalreviews'].toString();
//     url = json['url'];
//     date = json['date'] ?? "";
//     time = json['time'] ?? 0;
//     totalQuestion = json['totalquestion'] ?? 0;
//     attempt = json["attempt"] ?? 0;
//     coursename = json['coursename'];
//     instructorname = json['instructorname'];
//     mrpprice = json['mrpprice'];
//     gst = json['gst'] == null ? 0 : int.parse("${json['gst']}");
//     price = json['price'];
//     discount = json['discount'] == null ? 0 : int.parse("${json['discount']}");
//     description = json['description'] ?? "";
//     pdf = json['pdf'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['videourl'] = videourl;
//     data['url'] = url;
//     data['image'] = image;
//     data['coursetype'] = coursetype;
//     data['totalreviews'] = totalreviews;
//     data['linkname'] = linkname;
//     data['instructorname'] = instructorname;
//     data['mrpprice'] = mrpprice;
//     data['gst'] = gst;
//     data['price'] = price;
//     data['discount'] = discount;
//     data['description'] = description;
//     data['pdf'] = pdf;
//     return data;
//   }
// }

// class Upsstudentsay {
//   String? title = "";
//   List<Items>? items = [];

//   Upsstudentsay({this.title, this.items});

//   Upsstudentsay.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     if (json['items'] != null) {
//       items!.clear();
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });

//       items = items!.reversed.toList();
//     }
//   }
// }
// //
// class FreeNotes {
//   String? title = "";
//   List<Items>? items = [];

//   FreeNotes({this.title, this.items});

//   FreeNotes.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     if (json['items'] != null) {
//       items!.clear();
//       json['items'].forEach((v) {
//         items!.add( Items.fromJson(v));
//       });
//     }
//   }

// }
// //

// class AllUpdate {
//   String? title = "";
//   List<Update>? items = [];

//   AllUpdate({this.title, this.items});

//   AllUpdate.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     if (json['allupdates'] != null) {
//       items!.clear();
//       int index = 0;
//       json['allupdates'].forEach((v) {
//         items!.add(Update.fromJson(v)..sortIndex = index);
//         index++;
//       });
//     }
//   }
// }

// class IosProduct {
//   late String title;
//   late String prodIdStr;
//   late int prodId;

//   IosProduct(this.title, this.prodIdStr, this.prodId);

//   IosProduct.fromJson(Map<String, dynamic> json) {
//     title = json['name'].toString();
//     prodIdStr = json['iosproductid'].toString();
//     prodId = json['id'] == null ? 0 : int.parse("${json['id']}");
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['title'] = title;
//     data['prodIdStr'] = prodIdStr;
//     data['id'] = prodId;
//     return data;
//   }
// }
